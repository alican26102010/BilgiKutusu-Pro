# Donanım ve Sistem Gereksinimleri

Bu proje Raspberry Pi üzerinde çevrimdışı bilgi paylaşmak için hazırlanmıştır.

| Bileşen | Projede kullanılan / önerilen | Zorunluluk |
|---|---|---|
| Ana cihaz | Raspberry Pi 4 Model B, 8 GB RAM | Bu sürümde kullanılan ana cihaz |
| Depolama | **1 TB SSD** kullanıldı | 1 TB zorunlu değil; küçük depolama da kullanılabilir |
| Önyükleme ortamı | Uygun microSD veya yapılandırılmış USB önyükleme diski | Bir önyükleme ortamı gerekli |
| Güç | Raspberry Pi 4 ile uyumlu USB-C, 5,1 V / 3 A önerilir | Gerekli |
| Kablosuz bağlantı | Raspberry Pi 4 dahili Wi-Fi | Dahili Wi-Fi ile tek ağ kurulabilir |
| İkinci kablosuz arabirim |USB adaptör kullanıldı | İsteğe bağlı; iki ağ isteyenlere yararlı |
| Harici anten | Kullanılan adaptöre uyumlu anten | **İsteğe bağlı** |
| SSD kutusu/kablosu | SSD türüne uygun USB bağlantısı | Harici SSD tercih edilirse gerekli |
| Ethernet | Ağdan yönetim veya internet uplink | İsteğe bağlı |

## Depolama seçimi

32–64 GB temel portal ve sınırlı içerik için düşünülebilir. 128–256 GB daha geniş bir seçki için, 500 GB ve 1 TB ise büyük arşivler için uygundur. Gerçek ihtiyaç ZIM, PDF ve video boyutuna bağlıdır. İşletim sistemi ve boş alan için ayrıca pay bırakılmalıdır.

## Kablosuz ağ

Donanım iki Wi-Fi arabirimiyle iki SSID sunabilir. Önceki sistemde `BilgiKutusu` ve `BilgiKutusu-Dahili` adları kullanılmıştır; bunlar değiştirilebilir. Dahili `wlan0` üzerinde 5 GHz kanal 36 denenmiştir. **5 GHz desteği, 80 MHz kanal genişliği veya sürücü uyumu her sistemde aynı sonuçları garanti etmez.** Yasal ülke ayarları korunmalıdır.

## Yazılım

Debian tabanlı Linux, nginx, Kiwix (`kiwix-serve`), isteğe göre NetworkManager ve statik web dosyaları. Yapay zekâ gerekli değildir.
