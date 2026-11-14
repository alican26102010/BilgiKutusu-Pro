#!/usr/bin/env bash
set -euo pipefail
if [[ "$EUID" -ne 0 ]]; then echo 'Kullanım: sudo bash scripts/install-web.sh' >&2; exit 1; fi
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../web" && pwd)"
TARGET_DIR='/var/www/bilgikutusu'
if [[ ! -f "$SOURCE_DIR/index.html" ]]; then echo 'web/index.html bulunamadı.' >&2; exit 1; fi
if [[ -e "$TARGET_DIR" ]]; then
  echo "Hedef zaten var: $TARGET_DIR" >&2
  echo 'Önce yedekleyin veya hedefi elle inceleyin. Otomatik üzerine yazma yapılmadı.' >&2
  exit 2
fi
install -d -m 0755 "$TARGET_DIR"
cp -a "$SOURCE_DIR"/. "$TARGET_DIR"/
find "$TARGET_DIR" -type d -exec chmod 0755 {} +
find "$TARGET_DIR" -type f -exec chmod 0644 {} +
echo "Web dosyaları $TARGET_DIR konumuna kopyalandı. nginx ayarı değiştirilmedi."
