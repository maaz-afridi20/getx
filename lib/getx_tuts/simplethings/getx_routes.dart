import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/home.dart';

class GetxRoutes extends StatelessWidget {
  const GetxRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routes Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const Home(),
                  arguments:
                      "this is data from getxroutes page", // in the argument we can pass the data that we want to show on the next screen LIKE constructor
                  fullscreenDialog:
                      true, // this will act as the sceen is full dilog like it will have cross icon instead of back icon
                  transition: Transition
                      .zoom, // this is animation that will accure when we go to the next screen
                  duration: const Duration(
                      milliseconds: 2000), // duration of the transition
                  // we can also use curves animation to
                  // curve: Curves.bounceInOut,
                  //
                );
                // Get.off(() => Home());// so the off will do that when we go to the next screen it will not go back due to off. property,
                // Get.offAll(() => Home()); // will close all the previous screen.

                //
                //
                //
              },
              child: const Text('Go to home'),
            ),
          ],
        ),
      ),
    );
  }
}
