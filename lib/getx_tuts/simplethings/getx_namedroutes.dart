import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedRoutes extends StatelessWidget {
  const NamedRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          // if you want to go back through named routes but want
          // that it off all the routes then we can use like below

          // Get.offNamed("/home"), so this will go to the home page and
          // of all the pages. and will not be able to go back.

          // Text(
          // "the channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}"),
          // so basically this will get the channel name and content from the previous that from where we
          // came ....

          Text(
            "${Get.parameters['somevalue']}",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
