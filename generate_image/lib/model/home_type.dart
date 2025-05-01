import 'package:flutter/material.dart';
import 'package:generate_image/screens/feature/translator_feature.dart';
import 'package:get/get.dart';

enum HomeType { aiTranslator }

extension MyHomeType on HomeType {
  String get title => 'Language Translator';

  String get lottie => 'translate.json';

  bool get leftAlign => true;

  EdgeInsets get padding => EdgeInsets.zero;

  VoidCallback get onTap => () => Get.to(() => const TranslatorFeature());
}
