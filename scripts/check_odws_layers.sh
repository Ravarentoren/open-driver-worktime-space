#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# ODWS Documentation Layer Checker & Organizer
# ============================================================

DOCS_DIR="docs/en"

VALID_LAYERS=(
  normative
  descriptive
  conceptual
  analytical
  contextual
  procedural
  reference
  governance
)

DEBUG="${DEBUG:-false}"
FIX="${FIX:-false}"

debug() {
  [[ "$DEBUG" == "true" ]] && echo "[DEBUG] $*"
}

echo "🔍 ODWS Documentation Layer Check"
echo "================================"
echo "Directory: $DOCS_DIR"
echo "Fix mode:  $FIX"
echo

errors=0

# ------------------------------------------------------------
# Process files
# ------------------------------------------------------------

while IFS= read -r file; do
  rel="${file#$DOCS_DIR/}"
  dir="$(dirname "$rel")"
  base="$(basename "$file")"

  # Extract layer from HTML comment metadata
  layer="$(awk '
    /<!--/ {inblock=1}
    inblock && /^[[:space:]]*layer:[[:space:]]*/ {
      gsub(/^[[:space:]]*layer:[[:space:]]*/, "", $0)
      print $0
      exit
    }
    /-->/ {inblock=0}
  ' "$file")"

  if [[ -z "$layer" ]]; then
    echo "⚠️  Missing layer metadata: $rel"
    errors=$((errors+1))
    continue
  fi

  valid=false
  for v in "${VALID_LAYERS[@]}"; do
    [[ "$layer" == "$v" ]] && valid=true
  done

  if [[ "$valid" != "true" ]]; then
    echo "❌ Invalid layer '$layer' in $rel"
    errors=$((errors+1))
    continue
  fi

  expected_dir="$layer"

  if [[ "$dir" != "$expected_dir" ]]; then
    echo "📂 Misplaced document:"
    echo "   File:  $rel"
    echo "   Layer: $layer"
    echo "   Should be in: docs/en/$expected_dir/"

    if [[ "$FIX" == "true" ]]; then
      mkdir -p "$DOCS_DIR/$expected_dir"
      git mv "$file" "$DOCS_DIR/$expected_dir/$base"
      echo "   ✔ Moved"
    else
      echo "   ℹ Run with FIX=true to auto-move"
      errors=$((errors+1))
    fi
  else
    debug "OK: $rel"
  fi
done < <(find "$DOCS_DIR" -type f -name "*.md")

echo
if [[ "$errors" -gt 0 ]]; then
  echo "❌ Layer check completed with issues"
  exit 1
else
  echo "✅ All documents are correctly layered"
  exit 0
fi
