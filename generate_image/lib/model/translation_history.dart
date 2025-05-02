import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class TranslationHistory extends HiveObject {
  @HiveField(0)
  String originalText;

  @HiveField(1)
  String translatedText;

  @HiveField(2)
  String fromLang;

  @HiveField(3)
  String toLang;

  @HiveField(4)
  DateTime timestamp;

  TranslationHistory({
    required this.originalText,
    required this.translatedText,
    required this.fromLang,
    required this.toLang,
    required this.timestamp,
  });
}
