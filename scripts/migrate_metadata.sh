#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# ODWS Metadata Migrator (FINAL)
#
# - EN documents only
# - Required metadata contract enforced
# - Layer is derived from directory (authoritative)
# - Explains problems BEFORE opening editor
# - Opens nano at most ONCE per document
# - Ctrl+C always works
#
# No magic. No silent mode. Termux-safe.
# ============================================================

SOURCE_LANG="en"
DOCS_DIR="docs"

REQUIRED_KEYS=(
  layer
  domain
  topic
  version
  status
  language
  license
)

info()  { echo -e "\033[1;34m[INFO]\033[0m  $*"; }
warn()  { echo -e "\033[1;33m[WARN]\033[0m  $*"; }
error() { echo -e "\033[1;31m[ERR ]\033[0m  $*"; }

# ------------------------------------------------------------
# Detect metadata block
# ------------------------------------------------------------
has_metadata_block() {
  grep -q "<!--" "$1" && grep -q "odws:" "$1"
}

# ------------------------------------------------------------
# Return missing required keys (space-separated)
# ------------------------------------------------------------
missing_required_keys() {
  local file="$1"
  local missing=()

  for key in "${REQUIRED_KEYS[@]}"; do
    if ! grep -Eq "^[[:space:]]*$key:" "$file"; then
      missing+=("$key")
    fi
  done

  echo "${missing[*]}"
}

# ------------------------------------------------------------
# Insert canonical metadata template
# ------------------------------------------------------------
insert_metadata_template() {
  local file="$1"
  local layer="$2"

  info "Inserting canonical metadata template"

  tmp="$(mktemp)"
  cat > "$tmp" <<EOF
<!--
odws:
  layer: $layer
  domain:
  topic:
  version:
  status:
  language: en
  license:
-->
EOF

  cat "$file" >> "$tmp"
  mv "$tmp" "$file"
}

# ------------------------------------------------------------
# Extract declared layer from metadata
# ------------------------------------------------------------
declared_layer() {
  awk '/layer:/ {print $2; exit}' "$1"
}

# ------------------------------------------------------------
# MAIN
# ------------------------------------------------------------
echo "🧩 ODWS Metadata Migrator"
echo "========================"
echo

while IFS= read -r file; do
  rel="${file#$DOCS_DIR/$SOURCE_LANG/}"
  tree_layer="$(dirname "$rel" | cut -d/ -f1)"

  echo "📄 $rel"
  info "Layer (from tree): $tree_layer"

  # --- No metadata at all ---
  if ! has_metadata_block "$file"; then
    warn "No metadata block found"
    insert_metadata_template "$file" "$tree_layer"
  fi

  # --- Validate required keys ---
  missing="$(missing_required_keys "$file")"
  if [[ -n "$missing" ]]; then
    error "Missing required metadata keys:"
    for k in $missing; do
      echo "  - $k"
    done

    echo
    echo "Press ENTER to open editor, or CTRL+C to skip this document"
    read -r < /dev/tty

    nano "$file" < /dev/tty
  fi

  # --- Re-check after possible edit ---
  missing_after="$(missing_required_keys "$file")"
  if [[ -n "$missing_after" ]]; then
    warn "Still invalid after edit, skipping document"
    echo
    continue
  fi

  # --- Layer consistency check ---
  meta_layer="$(declared_layer "$file")"
  if [[ "$meta_layer" != "$tree_layer" ]]; then
    error "Layer mismatch detected"
    echo "  tree:     $tree_layer"
    echo "  metadata: $meta_layer"

    echo
    echo "Press ENTER to fix in editor, or CTRL+C to skip"
    read -r < /dev/tty

    nano "$file" < /dev/tty

    meta_layer="$(declared_layer "$file")"
    if [[ "$meta_layer" != "$tree_layer" ]]; then
      warn "Layer still mismatched, skipping document"
      echo
      continue
    fi
  fi

  info "Metadata OK"
  echo

done < <(find "$DOCS_DIR/$SOURCE_LANG" -type f -name "*.md")

echo "✅ Metadata migration finished"
