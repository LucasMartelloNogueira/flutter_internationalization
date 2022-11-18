import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../adapters/language_adapter.dart';

class LanguageController extends GetxController{

  static const List<Locale> locales = [
    Locale('pt', ''),
    Locale('en', ''),
    Locale('es', ''),
  ];
  
  void changeLanguage(String languageCode){
    LanguageAdapter.changeLanguage(languageCode);
  }
}