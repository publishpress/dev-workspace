#!/usr/bin/env bash
set -euo pipefail

if [[ "${GENERATE_TRANSLATION_JSON:-}" != "1" && "${GENERATE_TRANSLATION_JSON:-}" != "true" ]]; then
    echo "Skipping JSON translation generation (set GENERATE_TRANSLATION_JSON=1 in .env to enable)"
    exit 0
fi

for locale in $LANG_LOCALES
do
    po_file="./$LANG_DIR/$PLUGIN_SLUG-${locale}.po"
    if [ -f "$po_file" ]; then
        npx po2json "$po_file" > "./$LANG_DIR/$PLUGIN_SLUG-${locale}.json"
    fi
done
