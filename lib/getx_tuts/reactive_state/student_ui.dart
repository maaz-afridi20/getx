import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/reactive_state/student.dart';
import 'package:getx_tutorials/getx_tuts/reactive_state/student_controller.dart';
// import 'package:getx_tutorials/getx_tuts/reactive_state/student_controller.dart';

class StudentUi extends StatelessWidget {
  StudentUi({super.key});

  final Student ssss = Student();
  final MyContoller mycc = Get.put(MyContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Ui'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Name is ${mycc.sss.name}',
                style: const TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // ssss.name.value = ssss.name.value.toUpperCase();
                mycc.toUpperCasee();
              },
              child: const Text('Upper Case'),
            ),
            //
            //   this is another way of making the reactive
            //   just by giving the contoller type.
            //

            // Getx builder
            // for using the get builder then
            // from which button when you have to use that
            // method then you have to give the contoller type
            // on the button.
            // this is just another method.
            GetBuilder<MyContoller>(
              init: MyContoller(),
              builder: (controller) {
                return Text('the value is ${controller.count}');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.find<MyContoller>().increment();
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
