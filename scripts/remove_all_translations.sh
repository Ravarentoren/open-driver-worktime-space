#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# ODWS Translation Purge Tool
#
# - Removes ALL translated documents (non-EN)
# - EN documentation is NEVER touched
# - No silent mode
# - Human-readable, deterministic
# ============================================================

DOCS_DIR="docs"
SOURCE_LANG="en"

info() { echo "[INFO] $*"; }
warn() { echo "[WARN] $*"; }

echo "🔥 ODWS Translation Purge"
echo "========================"
echo

for lang_dir in "$DOCS_DIR"/*; do
  lang="$(basename "$lang_dir")"

  [[ "$lang" == "$SOURCE_LANG" ]] && continue
  [[ -d "$lang_dir" ]] || continue

  echo "🗑️  Language: $lang"

  find "$lang_dir" -type f -name "*.md" | while read -r file; do
    info "  DELETE $file"
    rm -f "$file"
  done

  echo
done

echo "✅ All translated documents removed"
