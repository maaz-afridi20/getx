import 'package:get/get.dart';

// we can make variables reactive one by one and also
// we can make the whole class reactive .

class Student extends GetxController {
  RxString name = "alikhanafridi".obs; // this is individual class reactive
  RxInt age = 20.obs;
}
