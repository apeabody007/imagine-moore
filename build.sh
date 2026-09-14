#!/bin/sh
# Wraps the artifact-form index.html into a standalone page in docs/ (served by GitHub Pages).
set -e
cd "$(dirname "$0")"
mkdir -p docs/assets
{
  printf '<!doctype html>\n<html lang="en">\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1">\n<meta name="robots" content="noindex">\n'
  cat index.html
} > docs/index.html
cp assets/*.png docs/assets/
touch docs/.nojekyll
echo "built docs/"
