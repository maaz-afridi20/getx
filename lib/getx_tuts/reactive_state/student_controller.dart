import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/internatiolization/messages.dart';
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

  RxInt count3 = 0.obs;

  void increment3() {
    count3++;
  }

  @override
  void onInit() {
    // called every time when the value of the count changes.
    // so when we ever at the time when the value of the count changes
    // the ever method will called and it will print the value of the count automatically.

    // all of the workers are give below as

    //
    //
    // 1) // ever(count3, (_) => print(count3));
    //

    // everAll([count3], (callback) => print(count3)); // the main difference between the ever and ever all is that
    // the ever all method take the list of the things while the ever only takes one things like when the
    // init functnon call it will print the whole list.

    // once(
    //     count3,
    //     (callback) =>
    //         print('counrting only once')); // this will be printed only once

    // debounce(count3, (callback) => print('this is data after 3 seconds'),
    //     time: const Duration(
    //         seconds: 3)); // so the eg is that when we are searching something
    // on every character some data is going to server so this will slow down the process
    // so the debounce function will do that we can use the duration and give the time
    // on our own will so this
    // property  will do that k jitna time hm nay uss duration mei diy hoga jab
    // jab textfield mei banda text likena band kr day tb jakay wo server to data send krega..
    // tu uss stay thora time bach jaye ga
    // k jab lag jaye k banda ab koi typing nai kar raha tab send kar do server ko bajaye iss k
    // k har character mein banda send krta jaye...
    //tu yaha pr hm nay time 1 seconds diya hian jb user 1 second k liye typing bnd krega tub
    // data server ko response karega..
    // generally use for searchingpurpose.

    //
    // tu iss wja hum ye wala worker use karengay jab aisa koii maamlaa hogaaa

    super.onInit();
  }
}
