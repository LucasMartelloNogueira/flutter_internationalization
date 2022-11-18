import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/core/getx_internationalization/app_translations.dart';
import 'app/core/getx_internationalization/language_controller.dart';

// internationlization achived using Flutter_getx and device language
// can change language used in the app without changing device language

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: AppTranslations(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("en"),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'GetX internationalization'),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, required this.title});

  final String title;
  final LanguageController controller = LanguageController();
  final Widget spacer = const SizedBox(height: 10,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HelloWorld".tr, // INTERNATIONALIZED TEXT
              style: const TextStyle(fontSize: 24),
            ),
            
            spacer,

            ElevatedButton(
              onPressed: (() => controller.changeLanguage("en")),
              child: const Text("en"),
            ),

            spacer,

            ElevatedButton(
              onPressed: (() => controller.changeLanguage("es")),
              child: const Text("es"),
            ),

            spacer,

            ElevatedButton(
              onPressed: (() => controller.changeLanguage("pt")),
              child: const Text("pt"),
            ),

            spacer
          ],
        ),
      ),
    );
  }
}
