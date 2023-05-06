import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/reactive_state/student_controller.dart';

class GettinguniqueId extends StatelessWidget {
  GettinguniqueId({super.key});

  MyContoller mycccc = Get.put(MyContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getting unique id'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<MyContoller>(
              id: 'Textcount',
              builder: (controller) {
                return Text(
                  'the value is ${controller.count2}',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            // the main difference between both the builders is that the
            // one have the id attribute and the other don't have it attribute.
            // we give the name of id attribute by ourself.
            GetBuilder<MyContoller>(
              builder: (controller) {
                return Text(
                  "the value  is ${controller.count2}",
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                mycccc.increment2();
              },
              child: const Text('Increment'),
            ),
            // so on the pressing button only the
            // above one has the id attribute
            // so only the above one has the id attribute and the above will be updated
            // not the below one. because in the controller class we have given
            // the updated attribute and give the name of the id
            // so this will update that builder method which
            // will have the id attribue.
          ],
        ),
      ),
    );
  }
}
