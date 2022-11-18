import 'package:get/get.dart';

class AppTranslations extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    "en": {
      "HelloWorld": "Hello World!"
    },

    "es": {
      "HelloWorld": "¡Hola Mundo!"
    },

    "pt": {
      "HelloWorld": "Olá Mundo!"
    }
  };
}