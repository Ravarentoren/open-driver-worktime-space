#!/usr/bin/env bash
# Generates informative translations of the Apache License 2.0.
# The English LICENSE file remains the only legally binding version.

set -euo pipefail

SOURCE_FILE="LICENSE"

# Verify source license exists
if [[ ! -f "$SOURCE_FILE" ]]; then
  echo "ERROR: $SOURCE_FILE not found"
  exit 1
fi

# Language display names
declare -A LANG_NAMES=(
  [cs]="Čeština"
  [de]="Deutsch"
  [fr]="Français"
  [ru]="Русский"
)

# Human-readable notices (Markdown-safe, Bash-safe)
declare -A HUMAN_NOTICE=(
  [cs]="> ℹ️ Toto je **informativní překlad** licence Apache 2.0.\n> \n> **Právně závazná je pouze anglická verze** v souboru \`LICENSE\`.\n> \n> V případě jakéhokoli rozporu má přednost anglické znění."
  [de]="> ℹ️ Dies ist eine **informative Übersetzung** der Apache License 2.0.\n> \n> **Rechtlich verbindlich ist ausschließlich die englische Version** in der Datei \`LICENSE\`.\n> \n> Im Falle von Abweichungen gilt der englische Text."
  [fr]="> ℹ️ Ceci est une **traduction informative** de la licence Apache 2.0.\n> \n> **Seule la version anglaise** du fichier \`LICENSE\` est juridiquement contraignante.\n> \n> En cas de divergence, le texte anglais prévaut."
  [ru]="> ℹ️ Это **информационный перевод** лицензии Apache 2.0.\n> \n> **Юридически обязательной является только английская версия** в файле \`LICENSE\`.\n> \n> В случае расхождений приоритет имеет английский текст."
)

# English legal notice (authoritative disclaimer)
read -r -d '' LEGAL_NOTICE_EN <<'EOF'
> ⚠️ This is an **informative, non-authoritative translation** of the Apache License 2.0.
>
> The **only legally binding version** is the English text contained in the `LICENSE` file.
>
> In case of any discrepancy, the English version prevails.
EOF

# Generate translated license files
for lang in cs de fr ru; do
  target="LICENSE.$lang.md"
  echo "Generating $target (${LANG_NAMES[$lang]})"

  cat <<EOF > "$target"
$LEGAL_NOTICE_EN

${HUMAN_NOTICE[$lang]}

---

$(cat "$SOURCE_FILE")
EOF
done
