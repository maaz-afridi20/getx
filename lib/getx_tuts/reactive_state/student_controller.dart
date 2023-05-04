import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/reactive_state/student.dart';

// this is the same method for previous
// for putting the logic on another class.
class MyContoller extends GetxController {
  Student sss = Student();

  void toUpperCasee() {
    sss.name.value = sss.name.value.toUpperCase();
  }

  var count = 0;
  void increment() {
    count++;
    update();
  }

// so we have the upadet below in this we have
// updated the 'Textcount' so basically this mean that
// in he getting unique class all the builders which have the id attribute
// only that will update the 'Textcount'.
  var count2 = 0;
  void increment2() {
    count2++;
    update(['Textcount']);
  }
}
