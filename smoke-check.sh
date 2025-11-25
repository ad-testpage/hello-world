#!/usr/bin/env bash
# smoke-check.sh
set -e
if [[ ! -f index.html ]]; then
  echo "index.html missing"
  exit 1
fi
# preprosta sintaktična kontrola: iskanje <html> tag
grep -i "<html" index.html >/dev/null
echo "smoke OK"
exit 0
