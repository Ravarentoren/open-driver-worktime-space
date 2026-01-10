#!/usr/bin/env bash
set -euo pipefail

ROOT="docs/en"

echo "🚚 ODWS Document Relocation by Metadata"
echo "======================================"
echo

find "$ROOT" -type f -name "*.md" | while read -r file; do
  rel="${file#$ROOT/}"
  filename="$(basename "$file")"
  current_dir="$(dirname "$rel")"

  # read FIRST layer occurrence
  meta_layer="$(grep -m1 '^[[:space:]]*layer:' "$file" | awk '{print $2}')"

  if [[ -z "$meta_layer" ]]; then
    echo "⚠️  SKIP (no layer metadata): $rel"
    continue
  fi

  target_dir="$ROOT/$meta_layer"
  target_path="$target_dir/$filename"

  if [[ "$current_dir" == "$meta_layer" ]]; then
    echo "✅ OK   $rel"
    continue
  fi

  if [[ ! -d "$target_dir" ]]; then
    echo "📁 MKDIR $target_dir"
    mkdir -p "$target_dir"
  fi

  if [[ -e "$target_path" ]]; then
    echo "❌ CONFLICT: $target_path already exists"
    echo "   from: $rel"
    continue
  fi

  echo "➡️  MOVE $rel → $meta_layer/$filename"
  mv "$file" "$target_path"
done

echo
echo "✅ Document relocation finished"
