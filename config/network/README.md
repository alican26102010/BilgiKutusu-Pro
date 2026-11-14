# Wi-Fi Yapılandırma Notları

BilgiKutusu Pro, Raspberry Pi dahili Wi-Fi ve isteğe bağlı USB Wi-Fi adaptörü ile iki ayrı erişim noktası sağlayabilir.

- Önceki kurulumda dahili `wlan0` ve USB `wlan1` kullanılmıştı.
- Örnek SSID'ler: `BilgiKutusu-Dahili`, `BilgiKutusu`.
- Önceki IP örnekleri: `wlan0` için `10.42.1.1/24`, `wlan1` için `10.42.0.1/24`. Bunlar kesin varsayılanlar değildir.
- Raspberry Pi 4'te 5 GHz kanal 36 denenmiştir; geniş bant desteği sürücü ve regülasyona bağlıdır.

**Gerçek Wi-Fi parolaları ve NetworkManager profil dosyaları bu depoda bulunmaz.**

Durum incelemek için (değişiklik yapmaz):

```bash
nmcli device status
nmcli connection show
ip -brief addr
iw dev
```

Yeni erişim noktası kurulumu için Raspberry Pi / NetworkManager belgelerine göre uygun `nmcli` komutlarını seçin. DHCP, IP yönlendirme ve NAT'ın kendi ağınızda nasıl çalışacağını ayrıca planlayın. Mevcut internet bağlantısını veya SSH erişimini kaybetmemek için Ethernet üzerinden çalışın ve geri dönüş planı hazırlayın.
