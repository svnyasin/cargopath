**T.C.**

**DOKUZ EYLÜL ÜNİVERSİTESİ**

**YÖNETİM BİLİŞİM SİSTEMLERİ**

**BULUT TABANLI KARGO TAKİP SİSTEMİ**

**CARGOPATH**

**YASİN SEVEN**

**2017469044**

**BERFİN AY**

**2017469009**

**OĞULCAN GALATA**

**2017469021**

**BİLİŞİM SİSTEMLERİ ANALİZİ VE TASARIMI**

**PROF. DR. YILMAZ GÖKŞEN**

**OCAK 2021**

**GİRİŞ**

**PROJENİN AMACI**

Kargo takip sistemleri bir kargo firması için müşteri memnuniyeti
açısından çok önemlidir. Bu projenin amacı, günümüzde çoğu kargo
firmasının kargo takip sistemlerinin doğru çalışmaması ve anlık bilgi
verememesi nedeniyle müşterilerin yaşadıkları mağduriyetleri en aza
indirmektir. Bu sistemdeki asıl sorunu çözen şey tüm bilgilerin bulut
üzerinde tek bir veri tabanında tutulup işleme alınması, kargoların QR
kod ile eşleştirilerek imzalanması ile veritabanına ulaşımın
pratikleştirilmesi ve diğer cihazların bu veri tabanına uzaktan erişim
sağlamalarıdır. Bu sayede veri tabanındaki her değişiklik tüm cihazlarda
gerçek zamanlı olarak takip edilebilmektedir.

**PROJENİN ÖZETİ**

Bu projede bulut tabanlı bir veri tabanı kullanan bir masaüstü
uygulaması ve bir mobil uygulama olacak. Kargo bilgileri şube çalışanı
tarafından "CargoPath Desktop" aracılığıyla bulut tabanlı bir veri
tabanına kaydedilecek ve bu bilgiler için bir takip numarasını
karşılayan QR kod oluşturulacak ve bu takip numarası veri tabanında
"Unique ID" olarak kullanılacak. Bu QR kod çıktı alınıp kargo üzerine
yapıştırılacak. Mobil uygulama kısmında ise hem personel girişi hem de
müşteri girişi olacak. Şirket çalışanlarına tahsis edilmiş mobil
cihazlara "CargoPath Mobile" kurularak, uygulamanın personel girişinden
giriş yapılacak ve açılan ekranda personelin bulunduğu konum girilerek
kargonun üzerindeki QR kod okutulduğunda, QR kodun döndürdüğü kargo
takip numarasına sahip kargonun bulunduğu konum bilgisi veri tabanında
güncellenecek. "CargoPath Mobile" uygulamasının müşteri girişi tarafında
ise tüm müşteriler kargo takip numaralarını girip kargoları hakkında
bilgileri anlık olarak takip edebilecek.

**PROJEDE KULLANILAN TEKNOLOJİLER**

**Kullanılan Programlar:** Microsoft Visual Studio Code, Android Studio,
Qt Designer, Flutter

**Kullanılan Programlama Dilleri:** Python, Dart

**Kullanılan Veritabanı:** Firebase Cloud Firestore

![](https://github.com/svnyasin/cargopath/blob/main/media/image1.png)

**VERİTABANI TASARIMI**

![](https://github.com/svnyasin/cargopath/blob/main/media/image2.png)

**GÜNCEL GELİŞTİRME SÜRECİ (28.12.2020)**

**CargoPath Desktop**

![](https://github.com/svnyasin/cargopath/blob/main/media/image3.png)

Masaüstü uygulamasının arayüz tasarımı ve programlaması büyük oranda
tamamlanmış olup, girilen veriler bulut sistemine eklenerek qr kod
oluşturmasını yapmakta.

**CargoPath Mobile**

![](https://github.com/svnyasin/cargopath/blob/main/media/image4.png)
![](https://github.com/svnyasin/cargopath/blob/main/media/image5.png)
![](https://github.com/svnyasin/cargopath/blob/main/media/image6.png)

**Uygulama Ana Ekranı Personel Girişi** **QR Okuma**

![](https://github.com/svnyasin/cargopath/blob/main/media/image7.png)
![](https://github.com/svnyasin/cargopath/blob/main/media/image8.png)
![](https://github.com/svnyasin/cargopath/blob/main/media/image9.png)

**Veri Güncelleme Müşteri Girişi** **Kargo Sorgulama**

**Veritabanı Örnek Veri**

![](https://github.com/svnyasin/cargopath/blob/main/media/image10.png)
