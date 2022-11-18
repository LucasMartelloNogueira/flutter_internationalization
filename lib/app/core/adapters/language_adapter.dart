import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LanguageAdapter {
  static void changeLanguage(String languageCode){
    Get.updateLocale(Locale(languageCode));
  }
}