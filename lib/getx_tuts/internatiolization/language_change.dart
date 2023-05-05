import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangeLanguage extends GetxController {
  void changeLanguage(var param1, var param2) {
    var locale = Locale(param1, param2);
    Get.updateLocale(
        locale); // inorder to update the language we have to use this
  }
}
