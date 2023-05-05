import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/dependencyInjectino/mycontroller2.dart';
import 'package:getx_tutorials/getx_tuts/reactive_state/student_controller.dart';

class AllControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController2>(() => MyController2());
    Get.lazyPut<MyContoller>(() => MyContoller());
  }
}
