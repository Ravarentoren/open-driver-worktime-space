#!/usr/bin/env bash
set -euo pipefail

DOCS_DIR="docs/en"
OUT="layer-mismatches.txt"

> "$OUT"

echo "🔍 Scanning for layer mismatches..."

find "$DOCS_DIR" -type f -name "*.md" | while read -r file; do
  rel="${file#$DOCS_DIR/}"
  tree_layer="$(dirname "$rel" | cut -d/ -f1)"

  meta_layer="$(awk '
    /odws:/ {in=1}
    in && /layer:/ {print $2; exit}
    /-->/ {in=0}
  ' "$file")"

  if [[ -n "$meta_layer" && "$meta_layer" != "$tree_layer" ]]; then
    echo "$rel | tree=$tree_layer | meta=$meta_layer" >> "$OUT"
  fi
done

echo "✅ Done. Mismatches written to $OUT"
