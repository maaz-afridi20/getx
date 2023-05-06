import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetDynamicTheme extends StatelessWidget {
  const BottomSheetDynamicTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // in the bottom sheet we have to specify that what should be displayed
                // so here we give it sizebox.
                Get.bottomSheet(
                  SizedBox(
                    // color: Colors.white,
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined,
                              color: Colors.black),
                          title: const Text('Light Theme',
                              style: TextStyle(color: Colors.black)),
                          onTap: () {
                            Get.changeTheme(ThemeData
                                .light()); // will change the theme to light
                          },
                        ),
                        ListTile(
                          leading:
                              const Icon(Icons.wb_sunny, color: Colors.black),
                          title: const Text('Dark Theme',
                              style: TextStyle(color: Colors.black)),
                          onTap: () {
                            Get.changeTheme(ThemeData
                                .dark()); // will change the theme to dark
                          },
                        ),
                      ],
                    ),
                  ),
                  // when the bottom sheet come out the background becomes blurred
                  // so if we want to change the color of that background
                  // we can use the barrier color property
                  barrierColor: Colors.greenAccent.shade100,
                  backgroundColor:
                      Colors.yellow, // background color of the bottom sheet,

                  isDismissible: true, //

                  // for customizing the bottom sheet we can use shape property
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0),
                  ),
                  enableDrag: true, // we can use drag the bottom sheet,
                );
              },
              child: const Text('Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
