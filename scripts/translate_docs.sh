#!/usr/bin/env bash

set -e

SOURCE_LANG="en"
TARGET_LANGS=("cs" "de" "fr" "ru")

for lang in "${TARGET_LANGS[@]}"; do
  for file in docs/$SOURCE_LANG/*.md; do
    name=$(basename "$file")
    echo "Generating $lang/$name"
    cat <<EOF > docs/$lang/$name
> ⚠ This file is auto-generated from docs/en/$name.
> Do not edit manually.

$(cat "$file")
EOF
  done
done
