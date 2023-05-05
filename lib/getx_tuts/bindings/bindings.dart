import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/bindings/chkingpage.dart';

import '../reactive_state/student_controller.dart';

class Bindingss extends StatelessWidget {
  const Bindingss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bindingss'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'The value is ${Get.find<MyContoller>().count}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<MyContoller>().increment();
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/home');
                Get.to(ChekingPage());
              },
              child: const Text('cheking page'),
            ),
          ],
        ),
      ),
    );
  }
}


/*
so tu ye jo binding hain for eg agar hm siraf ui part ko alag krna chahtay hain orr 
controllers etc ko alag krna chahtay hain tu tu hm bindings ka use kr sktay hain

qk binding kii classs mein hm saray jo controlers hain hm uss mein likh letay hain 
orr siraff useee say hiii hm un saray controlers ko use kr sktay hain
magar siraf main.dart mein pahlay initialBindings:AllControllers ko likh letay hain
ye ho AllControllers jo hain yye hm nay aik class banaii hai jiss mie wo saray controlers hongay 
jo hm use krna chahein... iss waja say hm un ko aik class mein bss bana lengay orr
dobra dobra ui k portion mein banany ki zarora nai hogi.....
*/