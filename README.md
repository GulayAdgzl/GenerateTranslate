# 🌍 Multi Language Translator App

Bu uygulama, kullanıcıların farklı diller arasında çeviri yapmasına olanak tanıyan **AI destekli bir çeviri uygulamasıdır**. Modern tasarımı, karanlık mod desteği ve sezgisel kullanıcı arayüzü ile dikkat çeker.

## 🚀 Özellikler

- 🔄 İki dil arasında çeviri yapma
- 🌐 Kaynak dili otomatik algılama
- 🧠 Google Translate API ile çeviri
- 🌓 Karanlık mod desteği
- 📱 Responsive tasarım
- 💬 Kolay kullanımlı arayüz
- 📦 GetX state management altyapısı

## 🖼️ Ekran Görüntüleri

| Ana Sayfa | Çeviri Sayfası |
|-----------|----------------|
| ![Home](screenshots/home.png) | ![Translator](screenshots/translator.png) |

## ⚙️ Kurulum

### Gereksinimler

- Flutter SDK
- Dart >= 3.x
- Android Studio veya VS Code

### Kurulum Adımları

```bash
git clone https://github.com/kullaniciAdi/translator_app.git
cd translator_app
flutter pub get
flutter run
lib/
├── main.dart                      # Uygulama giriş noktası
├── screens/
│   ├── home_screen.dart           # Ana sayfa
│   └── translator_feature.dart    # Çeviri ekranı
├── controller/
│   └── translate_controller.dart  # GetX kontrolcüsü
├── widgets/
│   ├── custom_btn.dart
│   └── language_sheet.dart
├── services/
│   └── appwrite.dart              # AppWrite entegrasyonu
├── helpers/
│   └── pref.dart                  # Tercih yönetimi (tema vb.)
