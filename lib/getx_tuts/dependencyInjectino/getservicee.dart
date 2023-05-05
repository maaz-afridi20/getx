import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service extends GetxService {
  Future<void> incrementCounte() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    int counter = (pref.getInt('counter') ?? 0) + 1;
    print('pressed $counter times.');
    await pref.setInt('counter', counter);
  }
}

// so the main difference between the getx controller and getx service is that 
// when we initialize the getx controller the controller is removed from memory
// automatically by the getx 
//
// so now when we want k ye controller memory say remove na ho..
// matlab k jab hm khud remove karein tu tab remove ho... 
// phir hm ye get service use karengay.