import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/reactive_state/student_controller.dart';

import 'mycontroller2.dart';

class GetPutt extends StatelessWidget {
  GetPutt({super.key});

  // final MyContoller mycc =
  //     Get.put(MyContoller(), tag: 'instance1', permanent: true);
  // so in getx when the controller is not used the getx remove that controller
  // becuase that controller is not used so if we want
  // that the getx does not remove the controller then we need to use  the permanent attribute.

  //
  // the tag iss liye use kiya haii k hm isse tag k name say hm iss controller ko find kr saktay hain.

  //
  // final myController = Get.lazyPut(() => MyContoller());

  // sso agar hm chahein k mmeory siraf uss time allocate ho jab hm controler ko
  // use karein tu hm lazyput use kr saktay hain.
  // tu tab usse time ye controller chal jaye ga.

  // if we want to use async type of things then we can also use the async controller.

  //

  final myController2 =
      Get.putAsync<MyController2>(() async => MyController2());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Putt'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //
                //
                //
                // Get.find<
                //     MyContoller>(); // so now by only pressing this button , this will
                // initialize the controller.

                //
                //
                //
                Get.find<MyController2>().incrementCounter();
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
