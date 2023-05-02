import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxSnackbar extends StatelessWidget {
  const GetxSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'title', 'this is the message',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.black,
                  //
                  titleText: const Text(
                    'Another Title',
                    style: TextStyle(color: Colors.white),
                  ),
                  messageText: const Text(
                    'This is the message',
                    style: TextStyle(color: Colors.white),
                  ),
                  // if we write these text then this will overwrite the
                  // the above title and message,

                  //
                  // color of the text
                  colorText: Colors.white,

                  // radius of the snackbar
                  borderRadius: 40,

                  // for margin
                  margin: const EdgeInsets.all(10),

                  // width of the snackbar
                  maxWidth: 300,

                  // duration of the snackbar

                  animationDuration: const Duration(milliseconds: 3000),

                  // gradient for the snack
                  // once the gradient is applied their will be no effect of background color
                  backgroundGradient: const LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  ),

                  // border color

                  // if we you want to set the border color of the snack
                  // then you should set the border width of the snack

                  borderColor: Colors.black,
                  borderWidth: 3,

                  // for shadow of the snack

                  boxShadows: const [
                    BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(30, 59),
                        spreadRadius: 20,
                        blurRadius: 8),
                  ],

                  // dissmissing the snack
                  // we have to make true the snack is dissmissible
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,

                  // curves for the snack
                  // many other curves are present
                  forwardAnimationCurve: Curves.bounceInOut,
                  // this is the duration of the animation
                  duration: const Duration(seconds: 3),
                  //
                  //
                  // show the leading icon of the snack
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  // this will stop the heartbeat type animatino of icon
                  shouldIconPulse: false,
                  //
                  //

                  // this will show some bar on side of the snack
                  leftBarIndicatorColor: Colors.red,

                  // this will show some button on right side of the snack
                  mainButton: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () {
                      // when we press on this button this action will
                      // be called
                    },
                    child: Text('Retry'),
                  ),

                  // when we press on snack we can also perform some actions
                  onTap: (snack) {
                    print('snackbar clicked');
                  },

                  //when we press on snack we can also blur the
                  // background screen by this action
                  overlayBlur: 5,
                  // this will blur behind the snack,
                  overlayColor:
                      Colors.grey, // this will be the color of the blurr...

                  // padding for the snack
                  padding: const EdgeInsets.all(50),

                  // progress bar inside the snack
                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.green,
                  // foreground color of idicator
                  progressIndicatorValueColor:
                      const AlwaysStoppedAnimation<Color>(
                    Colors.white,
                  ),

                  // for showing the textfield inside the snack
                  // if we showed up the userinput form then
                  // all of the above actions will not be shown
                  // userInputForm: Form(
                  //   child: Row(
                  //     children: const [
                  //       Expanded(
                  //         child: TextField(),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                );
              },
              child: const Text('Show Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
