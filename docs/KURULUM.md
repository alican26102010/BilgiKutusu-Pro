# Güvenli Kurulum Rehberi

Bu depo **örnek kodlar** içerir. Mevcut Raspberry Pi üzerinde kurulu sistemi otomatik olarak yeniden yapılandırmaz.

## 1. Ön kontroller

```bash
bash scripts/check-system.sh
```

Komut mevcut sürümleri, ağ arabirimlerini, diskleri ve servis durumlarını görüntüler. Değişiklik yapmaz.

## 2. Portalı kurma

```bash
sudo bash scripts/install-web.sh
```

Bu betik yalnızca `web/` içeriğini `/var/www/bilgikutusu/` altına kopyalar. Aynı isimdeki web dosyalarının üzerine yazabileceği için **önce hedef dizini yedekleyin**. nginx ayarını değiştirmez.

## 3. nginx ayarını elle uyarlama

`config/nginx/bilgikutusu.conf.example` dosyasını inceleyin. Varsayılan örnek `8081` portunda çalışır; gerçek sisteminizin portlarına göre ayarlayın. Uygun sunucu bloğuna yerleştirmeden önce mevcut yapılandırmaları yedekleyin.

```bash
sudo nginx -t
```

Geçerli olduğu doğrulanırsa sisteminize uygun biçimde nginx'i yeniden yükleyin. Mevcut sunucunuzda aynı portu kullanan blok varsa çakışmayı giderin.

## 4. Kiwix

Kiwix ayrıca kurulur ve yerel ZIM dosyalarıyla başlatılır. Önceki kurulumda Kiwix `8080` portunda çalışıyordu. ZIM dosyaları bu depoya dahil değildir. `config/systemd/kiwix-serve.service.example`, gerçek ZIM konumuna göre düzenlenecek **örnek** servis dosyasıdır. Var olan Kiwix servisini üzerine yazmayın.

## 5. Wi-Fi

`config/network/README.md` içindeki şablonu inceleyin. NetworkManager ayarlarını değiştirmek SSH bağlantısını kesebilir. Wi-Fi üzerinde uzaktan bağlıyken körlemesine uygulamayın; kablolu erişim ve geri dönüş planı kullanın. Parolaları GitHub'a yüklemeyin.

## 6. İçerik

Web sayfasındaki dosya kütüphanesi `/kutuphane/` yoluna bağlanır. nginx örnek ayarında bu yol `/mnt/BilgiKutusu/` depolama alanına işaret eder. İçerik klasörleri yoksa bağlantılar boş veya 404 dönebilir. Dosya listeleme varsayılan olarak kapalıdır; portalda listelemek istediğiniz içerikler için ayrıca bir katalog oluşturun.

## 7. Test

```bash
curl -I http://127.0.0.1:8081/
curl -I http://127.0.0.1:8080/
```

Bu adresler yalnızca servisler bu portlarda çalışıyorsa yanıt verir. Telefonunuzdan erişmek için Pi'nin **bağlandığınız ağdaki** IP adresini kullanın; `10.42.0.1` ve `10.42.1.1` farklı Wi-Fi arabirimlerine ait olabilmektedir.
