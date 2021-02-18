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

![](https://github.com/svnyasin/cargopath/blob/main/media/image1.png){width="6.3in" height="4.468055555555556in"}

**VERİTABANI TASARIMI**

![](media\image2.png){width="6.3in" height="3.5069444444444446in"}

**GÜNCEL GELİŞTİRME SÜRECİ (28.12.2020)**

**CargoPath Desktop**

![](media\image3.png){width="6.3in" height="5.757638888888889in"}

Masaüstü uygulamasının arayüz tasarımı ve programlaması büyük oranda
tamamlanmış olup, girilen veriler bulut sistemine eklenerek qr kod
oluşturmasını yapmakta.

**CargoPath Mobile**

![](media\image4.png){width="1.5695330271216097in"
height="3.4434787839020125in"}![](media\image5.png){width="1.5596620734908135in"
height="3.4086964129483817in"}![](media\image6.png){width="1.5716426071741032in"
height="3.3994805336832896in"}

**Uygulama Ana Ekranı Personel Girişi** **QR Okuma**

![](media\image7.png){width="1.5739129483814522in"
height="3.3971128608923884in"}![](media\image8.png){width="1.5587860892388452in"
height="3.391213910761155in"}![](media\image9.png){width="1.5700437445319335in"
height="3.432843394575678in"}

**Veri Güncelleme Müşteri Girişi** **Kargo Sorgulama**

**Veritabanı Örnek Veri**

![](media\image10.png){width="6.3in" height="3.18125in"}
