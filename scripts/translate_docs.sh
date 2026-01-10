#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# ODWS Documentation Translation Tool
#
# CONTRACT:
#   TRANSLATE_MODE=ALL     (default)
#   TRANSLATE_MODE=FOLDER
#   TRANSLATE_MODE=ONE
#   DEBUG=true             (dry-run only)
#
# No silent mode. No hidden behavior.
# Termux-safe. Human-readable.
# ============================================================

# ---------------- CONFIG ----------------

SOURCE_LANG="en"
TARGET_LANGS=("cs" "de" "fr" "ru")
DOCS_DIR="docs"

TRANSLATE_MODE="${TRANSLATE_MODE:-ALL}"
DEBUG="${DEBUG:-false}"

# ---------------- LOGGING ----------------

info()  { echo "[INFO] $*"; }
warn()  { echo "[WARN] $*"; }
debug() { [[ "$DEBUG" == "true" ]] && echo "[DEBUG] $*"; }

die() {
  echo "❌ ERROR: $*"
  exit 1
}

# ---------------- SAFETY ----------------

ensure_in_en_tree() {
  local pwd
  pwd="$(pwd)"
  [[ "$pwd" == *"$DOCS_DIR/$SOURCE_LANG/"* ]] || \
    die "You must be inside $DOCS_DIR/$SOURCE_LANG/* for this TRANSLATE_MODE"
}

# ---------------- HELPERS ----------------

translate_file() {
  local en_file="$1"

  [[ -f "$en_file" ]] || die "EN file not found: $en_file"

  local rel="${en_file#$DOCS_DIR/$SOURCE_LANG/}"
  local en_dir
  en_dir="$(dirname "$rel")"

  info "Translating: $rel"

  for lang in "${TARGET_LANGS[@]}"; do
    local out="$DOCS_DIR/$lang/$rel"
    local out_dir
    out_dir="$(dirname "$out")"

    if [[ "$DEBUG" == "true" ]]; then
      echo "  [DRY-RUN] $lang ← $out"
      continue
    fi

    mkdir -p "$out_dir"
    info "  Creating: $out"

    # ---- TRANSLATION ENGINE HOOK ----
    # TODO: replace this block with the real translator
    {
      sed '1s/^/<!-- TRANSLATED -->\n/' "$en_file"
    } > "$out"
  done
}

select_one_file() {
  mapfile -t files < <(ls *.md 2>/dev/null)

  (( ${#files[@]} > 0 )) || die "No .md files found in this folder"

  echo
  echo "Available documents:"
  for i in "${!files[@]}"; do
    echo "  $((i+1))) ${files[$i]}"
  done
  echo -n "Select document [1-${#files[@]}]: "

  read -r idx
  [[ "$idx" =~ ^[0-9]+$ ]] || die "Invalid selection"
  (( idx >= 1 && idx <= ${#files[@]} )) || die "Out of range"

  echo "${files[$((idx-1))]}"
}

# ---------------- MODES ----------------

run_all() {
  info "MODE: ALL"
  find "$DOCS_DIR/$SOURCE_LANG" -type f -name "*.md" | while read -r f; do
    translate_file "$f"
  done
}

run_folder() {
  info "MODE: FOLDER"
  ensure_in_en_tree

  for f in *.md; do
    translate_file "$PWD/$f"
  done
}

run_one() {
  info "MODE: ONE"
  ensure_in_en_tree

  local file
  file="$(select_one_file)"
  translate_file "$PWD/$file"
}

# ---------------- ENTRYPOINT ----------------

echo "🌍 ODWS Documentation Translator"
echo "================================"
echo "Mode:  $TRANSLATE_MODE"
echo "Debug: $DEBUG"
echo

case "$TRANSLATE_MODE" in
  ALL)    run_all ;;
  FOLDER) run_folder ;;
  ONE)    run_one ;;
  *) die "Invalid TRANSLATE_MODE: $TRANSLATE_MODE" ;;
esac

echo
echo "✅ Translation finished"
