import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Text(
            //   'this is home',
            //   style: TextStyle(
            //     fontSize: 18,
            //     color: Colors.purple,
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text('next screen'),
            // ),
            // const SizedBox(height: 8),
            // ElevatedButton(
            //   onPressed: () {
            //     Get.back();
            //   },
            //   child: const Text('back to main'),
            // ),
            // Text('${Get.arguments}'),

            ElevatedButton(
              // this is the example of named routes...
              onPressed: () {
                // Get.toNamed(
                //   "/namedroutepage ? channel=khang & content=flutter getx");
                //
                //
                //
                // so basically in this we have created 2 things one is channel and other is content
                // so if we want to access the value of the channel and the content
                // on that page where we are going
                // then on that page we have to use Get.parameter['content'] and Get.parameter['channel']
                // on that page it will be the shown.

                //
                // this is another method of doing that...
                //
                //
                Get.toNamed("/namedroutepage/47389");
              },
              child: const Text('Goto named routepage'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/nextscreen");
              },
              child: const Text('goto next screen page'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
