import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/internatiolization/language_change.dart';

class Internatinoal extends StatelessWidget {
  Internatinoal({super.key});

  final ChangeLanguage changeLanguage = Get.put(ChangeLanguage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Changing the language'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: const TextStyle(fontSize: 20, color: Colors.purple),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // or simply we can use this  instead of creating a method .
                // var locale = Locale('hi', 'IN');
                // Get.updateLocale(locale);
                changeLanguage.changeLanguage(
                    'hi', 'IN'); // this is the simple method
                // that we have created .. it is not compulsory we can also
                // use the above method.
              },
              child: const Text('Hindi'),
            ),
            ElevatedButton(
              onPressed: () {
                changeLanguage.changeLanguage('en', 'US');
              },
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () {
                changeLanguage.changeLanguage('fr', 'FR');
              },
              child: const Text('Spanish'),
            ),
            ElevatedButton(
              onPressed: () {
                changeLanguage.changeLanguage('ur', 'PK');
              },
              child: const Text('urdu'),
            ),
          ],
        ),
      ),
    );
  }
}
