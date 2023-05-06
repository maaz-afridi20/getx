import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/bindings/binding_controller.dart';
import 'package:getx_tutorials/getx_tuts/simplethings/getx_namedroutes.dart';

import 'package:getx_tutorials/getx_tuts/internatiolization/language_change.dart';
import 'package:getx_tutorials/getx_tuts/internatiolization/messages.dart';
import 'package:getx_tutorials/home.dart';
import 'package:getx_tutorials/nextscreen.dart';

import 'getx_tuts/bindings/bindings.dart';
import 'getx_tuts/getApi/api_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  ChangeLanguage changeLanguage = Get.put(ChangeLanguage());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBindings(),
      translations:
          Messages(), // this message is that class that we have created ths is not prdefined
      locale: const Locale('en', 'US'), // this will be the default language
      // agr hm chahtay hain k jo b mobile ki language ho default wohi statring
      // mein is app ki ho tu hm ye use karngay.
      //
      // locale: Get.deviceLocale, tu aisa krnay say jo b device ki default language ho to wo use ho jayegi

      //
      // so agar koi error ataa hai k wo language nai ho device mein tu hm fall back use kar saktay hain
      fallbackLocale: const Locale('en', 'US'),
      //
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      // always the screen name must start with /
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => const Home()),
        GetPage(
            name: '/nextscreen',
            page: () => const NextScreen(),
            transition: Transition
                .upToDown), // this transition will override the default transition
        GetPage(
            name: '/namedroutepage/:somevalue',
            page: () => const NamedRoutes()),
        // so we have put :somevalue after the name of the page
        // this is another way of getting values when we like the constructor.
        // this is the paramater.
      ],
      home: ApiUi(),
    );
  }
}
