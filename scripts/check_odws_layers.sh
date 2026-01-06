#!/usr/bin/env bash
set -euo pipefail

# ============================
# CONFIG
# ============================

DOCS_DIR="docs/en"

VALID_LAYERS=(
  normative
  descriptive
  interpretative
  computational
  guidance
)

# ============================
# STATE
# ============================

declare -A by_layer
missing=()
invalid=()

for layer in "${VALID_LAYERS[@]}"; do
  by_layer["$layer"]=""
done

# ============================
# HEADER
# ============================

echo "🔍 ODWS Documentation Layer Check"
echo "================================"
echo "Directory: $DOCS_DIR"
echo

# ============================
# PROCESS FILES
# ============================

for file in "$DOCS_DIR"/*.md; do
  filename="$(basename "$file")"

  layer="$(awk '
    /<!--/ {inblock=1}
    inblock && /layer:/ {print $2; exit}
    /-->/ {inblock=0}
  ' "$file")"

  if [[ -z "${layer:-}" ]]; then
    missing+=("$filename")
    continue
  fi

  valid=false
  for v in "${VALID_LAYERS[@]}"; do
    if [[ "$layer" == "$v" ]]; then
      valid=true
      by_layer["$v"]+="$filename"$'\n'
      break
    fi
  done

  if [[ "$valid" == false ]]; then
    invalid+=("$filename ($layer)")
  fi
done

# ============================
# REPORT
# ============================

for layer in "${VALID_LAYERS[@]}"; do
  echo "📄 $layer documents:"
  if [[ -n "${by_layer[$layer]}" ]]; then
    while read -r f; do
      [[ -n "$f" ]] && echo "  - $f"
    done <<< "${by_layer[$layer]}"
  else
    echo "  (none)"
  fi
  echo
done

if (( ${#missing[@]} > 0 )); then
  echo "⚠️  Documents missing metadata:"
  for f in "${missing[@]}"; do
    echo "  - $f"
  done
  echo
fi

if (( ${#invalid[@]} > 0 )); then
  echo "❌ Documents with invalid layer value:"
  for f in "${invalid[@]}"; do
    echo "  - $f"
  done
  echo
fi

# ============================
# EXIT STATUS
# ============================

if (( ${#missing[@]} > 0 || ${#invalid[@]} > 0 )); then
  echo "❌ Layer check FAILED"
  exit 1
else
  echo "✅ All documents have valid ODWS layers"
  exit 0
fi
