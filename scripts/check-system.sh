#!/usr/bin/env bash
set -u
printf '\n=== SISTEM ===\n'; uname -a || true
printf '\n=== BELLEK ===\n'; free -h || true
printf '\n=== DEPOLAMA ===\n'; lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINTS || true
printf '\n=== AG ===\n'; ip -brief addr || true
printf '\n=== WIFI ===\n'; if command -v iw >/dev/null; then iw dev || true; else echo 'iw yüklü değil'; fi
printf '\n=== SERVISLER ===\n'; for svc in nginx kiwix-serve NetworkManager; do systemctl is-active "$svc" 2>/dev/null || true; done
printf '\n=== PORTLAR ===\n'; if command -v ss >/dev/null; then ss -lnt | grep -E '(:8080|:8081|State)' || true; fi
printf '\nBu betik değişiklik yapmaz. Çıktıda ağ adresleri yer alabilir; paylaşmadan önce kontrol edin.\n'
