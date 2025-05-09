🌍 Multi Language Translator App
Bu uygulama, kullanıcıların farklı diller arasında çeviri yapmasına olanak tanıyan AI destekli bir çeviri uygulamasıdır. Modern tasarımı, karanlık mod desteği ve sezgisel kullanıcı arayüzü ile dikkat çeker.

🚀 Özellikler
🔄 İki dil arasında çeviri yapma

🌐 Kaynak dili otomatik algılama

🧠 Google Translate API ile çeviri

🌓 Karanlık mod desteği

📱 Responsive tasarım

💬 Kolay kullanımlı arayüz

📦 GetX state management

🖼️ Ekran Görüntüleri
Ana Sayfa Çeviri Sayfası

⚙️ Kurulum
Gereksinimler
Flutter SDK

Dart >= 3.x

Android Studio veya VS Code

Adımlar
bash
Kopyala
Düzenle
git clone https://github.com/kullaniciAdi/translator_app.git
cd translator_app
flutter pub get
flutter run
📁 Proje Yapısı
bash
Kopyala
Düzenle
lib/
├── main.dart # Giriş noktası
├── screens/
│ ├── home_screen.dart # Ana sayfa
│ └── translator_feature.dart # Çeviri ekranı
├── controller/
│ └── translate_controller.dart
├── widgets/
│ ├── custom_btn.dart
│ └── language_sheet.dart
├── services/
│ └── appwrite.dart # AppWrite entegrasyonu
├── helpers/
│ └── pref.dart # Tercihler (karanlık mod vb.)
🧠 Kullanılan Paketler
get - State management ve routing

google_fonts - Özel font desteği

shared_preferences - Yerel veriler için

flutter_translate - Google Translate API (veya özel API)

🌑 Tema Desteği
Uygulama, kullanıcının tema tercihine göre otomatik olarak açık veya karanlık mod kullanır. Ayar AppBar'dan değiştirilebilir.

dart
Kopyala
Düzenle
Get.changeThemeMode(ThemeMode.dark);
📄 Lisans
Bu proje MIT Lisansı altında lisanslanmıştır. Daha fazla bilgi için LICENSE dosyasını kontrol edebilirsiniz.
