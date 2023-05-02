import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxDialogue extends StatelessWidget {
  const GetxDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogue'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //showing dialog
                Get.defaultDialog(
                  title: 'My Dialogue',
                  // style the text of the dialog
                  titleStyle: const TextStyle(fontSize: 20, color: Colors.red),
                  // this is the text
                  middleText: 'my customized message',
                  middleTextStyle:
                      const TextStyle(fontSize: 20, color: Colors.yellow),
                  // background color of the dialog
                  backgroundColor: Colors.green,

                  //
                  //
                  //
                  // border radius of the dialog
                  radius: 10,
                  // if we want to customize the middle text then we can
                  // use content property of the dialog so in that we can
                  // use any thing in that like row etc.
                  // 👉
                  // content: Row(
                  //   children: const [
                  //     CircularProgressIndicator(),
                  //     Spacer(),
                  //     Expanded(
                  //       child: Text('loading'),
                  //     )
                  //   ],
                  // ),

                  //
                  //
                  //
                  textCancel: 'Cancel', // will show the cancel button
                  cancelTextColor: Colors.red,
                  textConfirm: 'Confirm', // will show the confirm button,
                  confirmTextColor: Colors.white,
                  onCancel:
                      () {}, // when press on cancel button this can be used to do something
                  onConfirm:
                      () {}, // when press on confirm button this can be used to do something
                  buttonColor: Colors.white,
                  // these were the default but if we want to customize then we can use the
                  // cancel
                  // like
                  cancel: TextButton(
                      onPressed: () {},
                      child: const Text(
                          'Cancel')), // the cancel take widget so we can give it anything.
                  confirm: TextButton(
                      onPressed: () {},
                      child: const Text(
                          'confirm')), // the confirm take widget so we can give it anything.
                  // the confirm take widget so we can give it anything.
                  //
                  //
                  barrierDismissible:
                      true, // this will do that whether the dialog is dismissible or not,

                  actions: [], // in this we can add list of things to be done
                  // like rows columns buttons etc.
                );
              },
              child: const Text('Show Dialogue'),
            ),
          ],
        ),
      ),
    );
  }
}
