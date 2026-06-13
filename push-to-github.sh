#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

REMOTE="https://github.com/yusufcihangir/salatvakti-wep-assets.git"

if ! git remote get-url origin >/dev/null 2>&1; then
  git remote add origin "$REMOTE"
fi

git remote set-url origin "$REMOTE"

if [ -f push-to-github.sh ] && ! git ls-files --error-unmatch push-to-github.sh >/dev/null 2>&1; then
  git add push-to-github.sh
  git commit -m "Add GitHub push helper script."
fi

echo "GitHub'da repo oluşturuldu mu kontrol ediliyor..."
if git ls-remote origin HEAD >/dev/null 2>&1; then
  git push -u origin main
  echo ""
  echo "Tamam: https://github.com/yusufcihangir/salatvakti-wep-assets"
  exit 0
fi

echo ""
echo "Repo henüz yok. Tarayıcıda şu adımları yap:"
echo "1) https://github.com/new?name=salatvakti-wep-assets"
echo "2) Public seç"
echo "3) README / .gitignore / license EKLEME (boş repo)"
echo "4) Create repository"
echo ""
echo "Sonra tekrar çalıştır:"
echo "  ./push-to-github.sh"
exit 1
