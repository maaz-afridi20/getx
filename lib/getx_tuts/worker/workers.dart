import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../reactive_state/student_controller.dart';

class Workerss extends StatelessWidget {
  Workerss({super.key});

  MyContoller mycc = Get.put(MyContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workers'),
      ),
      body: Column(
        children: [
          // workers are the this that are triggered when
          // some specific thing is accured like for eg.
          // when we press button is changes the state of the app.
          // so when we press button and also want that the value is printed inside the console
          // then we can use the workers to the smae type of things
          // this was just example.

          ElevatedButton(
            onPressed: () {
              mycc.increment3();
            },
            child: const Text('Increment'),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              onChanged: (value) {
                mycc.increment3();
              },
            ),
          ),
        ],
      ),
    );
  }
}
