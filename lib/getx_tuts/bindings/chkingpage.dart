import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dependencyInjectino/mycontroller2.dart';

class ChekingPage extends StatelessWidget {
  const ChekingPage({super.key});

  // final controll = Get.find<MyController2>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cheninkg page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'the value is ${Get.find<MyController2>().count} ',
                // we can also use this method
                // 'the value is ${controll.count} ',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.find<MyController2>().incrementCount();
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('go back'),
            ),
          ],
        ),
      ),
    );
  }
}
