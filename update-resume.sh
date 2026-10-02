#!/usr/bin/env bash
# Refresh SumitKumar.pdf from the source CV.
# Source: https://tinyurl.com/sumit-k-cv
#   -> https://drive.google.com/file/d/1RM0utO0s2mknqPzXaYiAQV-69o-bsUTZ/view
set -euo pipefail
cd "$(dirname "$0")"
curl -fsSL "https://drive.google.com/uc?export=download&id=1RM0utO0s2mknqPzXaYiAQV-69o-bsUTZ" -o SumitKumar.pdf.tmp
file SumitKumar.pdf.tmp | grep -q 'PDF document' || { echo "Download is not a PDF" >&2; rm -f SumitKumar.pdf.tmp; exit 1; }
mv SumitKumar.pdf.tmp SumitKumar.pdf
echo "Updated SumitKumar.pdf"
