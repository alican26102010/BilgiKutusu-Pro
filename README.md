<div align="center">

# BilgiKutusu-Pro

*İnternet olmasa da bilgiye ulaş! Raspberry Pi 4 tabanlı taşınabilir çevrimdışı bilgi deposu.*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Status: In Development](https://img.shields.io/badge/Status-In%20Development-blueviolet)](https://github.com/alicanyilmz/BilgiKutusu-Pro)
[![OS](https://img.shields.io/badge/OS-Raspberry%20Pi%20OS%20Lite-C51A4A?logo=raspberrypi&logoColor=white)](https://www.raspberrypi.org/)
[![Server](https://img.shields.io/badge/Server-Nginx-009639?logo=nginx&logoColor=white)](https://nginx.org/)

> ** PROJE GELİŞTİRME AŞAMASINDADIR!**

</div>

---

##  BilgiKutusu-Pro Nedir?

**BilgiKutusu-Pro**, Raspberry Pi 4 kullanılarak geliştirilen, kendi Wi-Fi ağına sahip ve internet bağlantısı gerektirmeyen taşınabilir bir dijital bilgi deposudur.

Projenin temel amacı; internetin bulunmadığı kırsal bölgelerde, okullarda, afet durumlarında ve günlük yaşamda eğitim ve bilgi kaynaklarına ücretsiz ve kesintisiz erişim sağlamaktır. Sistem tamamen yerel olarak çalışır, yapay zekâ içermez ve hiçbir dış ağ bağlantısına ihtiyaç duymaz.

---

##  Donanım & Yazılım Altyapısı

### 🔧 Donanım Bileşenleri
- **Ana Bilgisayar:** Raspberry Pi 4 Model B
- **Depolama:** 1 TB SSD
- **Ağ:** Dahili Wi-Fi + Harici USB Wi-Fi Adaptörü
- **Güç:** Uyumlu güç kaynağı ve bağlantı ekipmanları

###  Yazılım Yığını
| Bileşen | Seçilen Teknoloji | Açıklama |
| :--- | :--- | :--- |
| **İşletim Sistemi** | Raspberry Pi OS Lite | Debian Linux tabanlı, hafif CLI ortamı |
| **Uzaktan Yönetim** | SSH | Güvenli terminal yönetimi |
| **Web Sunucusu** | Nginx | Yerel portal ve servis sunumu |
| **Ansiklopedi Altyapısı**| Kiwix | Çevrimdışı Wikipedia ve içerik okuyucu |

---

##  Sistem Özellikleri

-  **Yerel Kablosuz Ağ:** İnternete gerek duymadan `BilgiKutusu` ve `BilgiKutusu-Dahili` ağları üzerinden yayın.
-  **Çoklu Cihaz Desteği:** Akıllı telefon, tablet ve dizüstü bilgisayarlardan sorunsuz tarayıcı erişimi.
-  **Zengin Arşiv:** Türkçe ve İngilizce Wikipedia dökümleri ve Nginx tabanlı sezgisel yerel portal.
-  **Optimize Kaynak Kullanımı:** Grafik arayüz (Desktop GUI) barındırmadığı için tüm kaynaklar servis performansına odaklanır.

---

##  İçerik Kütüphanesi

###  Mevcut İçerikler
- Türkçe Wikipedia Arşivi
- İngilizce Wikipedia Arşivi
- Yerel Bilgi Portalı Arayüzü

###  Planlanan İçerikler
- [ ]  Eğitim videoları ve ders içerikleri
- [ ]  Türkiye’nin ayrıntılı çevrimdışı haritaları
- [ ]  Türkçe ve İngilizce e-kitap arşivleri
- [ ]  Tarım, bitki yetiştiriciliği ve hayvancılık rehberleri
- [ ]  Balıkçılık ve doğada hayatta kalma/kampçılık bilgileri
- [ ]  Deprem, sel ve afet hazırlık rehberleri
- [ ]  Yerel film, belgesel ve dizi arşivi
- [ ]  Çevrimdışı web sayfaları kopyaları (Kiwix uyumlu)
- [ ]  Teknik PDF dokümanları ve kılavuzlar

*(Planlanan içerikler depolama kapasitesi ve lisans koşullarına göre aşamalı olarak eklenecektir.)*

---

##  Nasıl Kullanılır?

1. **Sistemi Başlatın:** Raspberry Pi 4 cihazınıza uygun güç bağlantısını yapın.
2. **Kablosuz Ağa Bağlanın:** Telefon veya bilgisayarınızdan **BilgiKutusu** Wi-Fi ağına bağlanın.
3. **Portala Gidin:** Tarayıcınızı açarak yerel bilgi portalı adresine gidin. *(Not: Yerel portal IP adresi kurulum ayarlarınıza göre değişiklik gösterebilir).*
4. **Keşfedin:** Ansiklopedileri, kılavuzları ve çevrimdışı içerikleri özgürce kullanın.

---

##  Projenin Hedefleri

- İnternet altyapısına bağımlı kalmadan bilgiye erişimi demokratikleştirmek.
- Eğitimde dijital kaynakları dezavantajlı bölgelere ulaştırmak.
- Afet ve acil durum senaryolarında hayati bilgilere anında ulaşılmasını sağlamak.
- Tamamen açık kaynaklı yazılımlar üzerine ölçeklenebilir ve düşük maliyetli bir mimari kurmak.

---

##  Katkıda Bulunma

Projeye geliştirme önerileri, hata bildirimleri, açık lisanslı eğitim materyalleri veya teknik optimizasyonlarla katkıda bulunabilirsiniz:
1. Bir **Issue** açarak önerinizi veya bulduğunuz hatayı paylaşın.
2. Katkı yapmak istediğiniz alanlar için pull request gönderebilirsiniz.

---

## ⚖️ Lisans

Bu proje **MIT Lisansı** altında korunmaktadır. Detaylı bilgi için [LICENSE](LICENSE) a bakın <3 
