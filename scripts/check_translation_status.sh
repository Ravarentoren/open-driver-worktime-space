#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# ODWS Translation Status Checker
#
# CONTRACT:
#   Uses translate_docs.sh with:
#     TRANSLATE_MODE=ALL|FOLDER|ONE
#     DEBUG=true
#
# Stops on every problem.
# Human-controlled resolution only.
# ============================================================

SOURCE_LANG="en"
TARGET_LANGS=("cs" "de" "fr" "ru")
DOCS_DIR="docs"

DEBUG="${DEBUG:-false}"

METADATA_FIELDS=(layer domain topic version)

# ---------------- LOGGING ----------------

info()  { echo "[INFO] $*"; }
warn()  { echo "[WARN] $*"; }
debug() { [[ "$DEBUG" == "true" ]] && echo "[DEBUG] $*"; }

abort() {
  echo "❌ Aborted by user"
  exit 1
}

# ---------------- METADATA ----------------

get_metadata_value() {
  local file="$1" key="$2"
  awk -v k="$key" '
    /<!--/ {inblock=1}
    inblock && $1 ~ k ":" {
      sub(/^[^:]+:[[:space:]]*/, "", $0)
      print; exit
    }
    /-->/ {inblock=0}
  ' "$file"
}

metadata_mismatch_fields() {
  local en="$1" tr="$2"
  for f in "${METADATA_FIELDS[@]}"; do
    [[ "$(get_metadata_value "$en" "$f")" != "$(get_metadata_value "$tr" "$f")" ]] && echo "$f"
  done
}

is_translation_outdated() {
  [[ "$(get_metadata_value "$1" version)" != "$(get_metadata_value "$2" version)" ]]
}

# ---------------- INTERACTIVE MENU ----------------

interactive_menu() {
  local en="$1" tr="$2" lang="$3"

  echo
  echo "⚠️ Problem detected [$lang]"
  echo "EN: $en"
  echo "TR: $tr"
  echo
  echo "Choose action:"
  echo "  [1] TRANSLATE_MODE=ONE    (only this document)"
  echo "  [2] TRANSLATE_MODE=FOLDER (whole EN folder)"
  echo "  [3] TRANSLATE_MODE=ALL    (everything)"
  echo "  [4] Open translation in editor (nano)"
  echo "  [5] Skip"
  echo "  [6] Abort"
  echo -n "> "

  read -r choice < /dev/tty

  case "$choice" in
    1)
      ( cd "$(dirname "$en")" && TRANSLATE_MODE=ONE ./scripts/translate_docs.sh )
      ;;
    2)
      ( cd "$(dirname "$en")" && TRANSLATE_MODE=FOLDER ./scripts/translate_docs.sh )
      ;;
    3)
      TRANSLATE_MODE=ALL ./scripts/translate_docs.sh
      ;;
    4)
      nano "$tr"
      ;;
    5)
      warn "Skipped"
      return 1
      ;;
    6)
      abort
      ;;
    *)
      warn "Invalid choice"
      return 1
      ;;
  esac

  return 0
}

# ---------------- RESOLVER ----------------

resolve_translation() {
  local en="$1" tr="$2" lang="$3"

  while true; do
    if [[ ! -f "$tr" ]]; then
      echo "  $lang: ❌ MISSING"
      interactive_menu "$en" "$tr" "$lang" || return
      continue
    fi

    mismatches="$(metadata_mismatch_fields "$en" "$tr")"
    if [[ -n "$mismatches" ]]; then
      echo "  $lang: ⚠️ METADATA MISMATCH ($mismatches)"
      interactive_menu "$en" "$tr" "$lang" || return
      continue
    fi

    if is_translation_outdated "$en" "$tr"; then
      echo "  $lang: ⚠️ TRANSLATION OUTDATED (version)"
      interactive_menu "$en" "$tr" "$lang" || return
      continue
    fi

    echo "  $lang: ✅ OK"
    break
  done
}

# ---------------- MAIN ----------------

echo "🔍 ODWS Translation Status Checker"
echo "================================="
echo

while IFS= read -r en_file; do
  rel="${en_file#$DOCS_DIR/$SOURCE_LANG/}"
  echo "📄 $rel"

  for lang in "${TARGET_LANGS[@]}"; do
    resolve_translation "$en_file" "$DOCS_DIR/$lang/$rel" "$lang"
  done

  echo
done < <(find "$DOCS_DIR/$SOURCE_LANG" -type f -name "*.md")

echo "✅ Translation status check finished"
