import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/getting_uinqueid.dart';
import 'package:getx_tutorials/getx_tuts/getx_namedroutes.dart';
import 'package:getx_tutorials/getx_tuts/getx_routes.dart';
import 'package:getx_tutorials/getx_tuts/reactive_state/student_ui.dart';
import 'package:getx_tutorials/getx_tuts/worker/workers.dart';
import 'package:getx_tutorials/home.dart';
import 'package:getx_tutorials/nextscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      // always the screen name must start with /
      getPages: [
        GetPage(name: '/', page: () => const MyApp()),
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
      home: Workerss(),
    );
  }
}
