#!/usr/bin/env bash
# Bilingual parity check: the en-US/ and pt-BR/ trees must stay 1:1.
# File names differ (translated), so we compare counts + structure + the 🌐 switcher,
# not exact names. Exit non-zero on any mismatch (used in CI).
set -euo pipefail
cd "$(dirname "$0")/.."

fail=0

en_md=$(find en-US -name '*.md' | wc -l | tr -d ' ')
pt_md=$(find pt-BR -name '*.md' | wc -l | tr -d ' ')
if [ "$en_md" != "$pt_md" ]; then
  echo "::error::Markdown count mismatch — en-US=$en_md pt-BR=$pt_md"
  fail=1
fi

en_labs=$(find en-US/reader-labs -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')
pt_labs=$(find pt-BR/labs-do-leitor -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')
if [ "$en_labs" != "$pt_labs" ]; then
  echo "::error::Lab directory count mismatch — en-US=$en_labs pt-BR=$pt_labs"
  fail=1
fi

# Every reading document must carry the language switcher.
missing=$(grep -L "🌐" $(find en-US pt-BR -name '*.md') || true)
if [ -n "$missing" ]; then
  echo "::error::Missing 🌐 language switcher in:"
  echo "$missing"
  fail=1
fi

if [ "$fail" -eq 0 ]; then
  echo "Bilingual parity OK — $en_md docs each, $en_labs lab dirs each, all carry 🌐."
fi
exit "$fail"
