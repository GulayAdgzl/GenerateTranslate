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
![2](https://github.com/user-attachments/assets/55437ac8-734b-45ac-bca4-db196a8f0e07)
![1](https://github.com/user-attachments/assets/6eb92dfa-a5d4-4db4-9d4b-be7fd5556a51)
![11](https://github.com/user-attachments/assets/fa8d1d11-db76-4a6b-bcab-ab72b11557e3)
![10](https://github.com/user-attachments/assets/3381dff4-6f59-4f7e-a125-f2368c7646ef)
![9](https://github.com/user-attachments/assets/79ac8419-4e05-41a2-a3af-00b1f6ebe334)
![8](https://github.com/user-attachments/assets/8788d534-f825-4b1c-bc82-9e56931a7629)
![7](https://github.com/user-attachments/assets/b145f0a8-671a-4ec0-bbaf-1445018987fd)
![6](https://github.com/user-attachments/assets/5ee20051-7bc8-4f03-ba70-aaf781887ffb)
![5](https://github.com/user-attachments/assets/52d7de80-c332-47f1-b50a-340833dc9264)
![4](https://github.com/user-attachments/assets/a5585b8c-9a05-4617-8969-cbcb687e378f)
![3](https://github.com/user-attachments/assets/8ee3da2c-ef75-421e-a490-b0d5ff71a290)


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
