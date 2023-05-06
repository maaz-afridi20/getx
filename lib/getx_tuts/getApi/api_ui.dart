import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/getx_tuts/getApi/controller.dart';
import 'package:getx_tutorials/getx_tuts/getApi/model.dart';

ControllerClass cc = ControllerClass();

class ApiUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: cc.getData(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 130,
                color: Colors.greenAccent,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text('user data ${cc.placeholdersList[index].userId}'),
                  ],
                ),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
          ;
        }
      },
    );
  }
}


// Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: const Icon(Icons.arrow_back_ios),
//         actions: const [
//           Icon(Icons.shopping_cart_rounded),
//           SizedBox(width: 10),
//           Icon(Icons.menu),
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   const Expanded(
//                     child: Text(
//                       'Shop Xx',
//                       style: TextStyle(
//                           fontSize: 32,
//                           fontFamily: 'avenir',
//                           fontWeight: FontWeight.w900),
//                     ),
//                   ),
//                   IconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.view_list_rounded)),
//                   IconButton(
//                       onPressed: () {}, icon: const Icon(Icons.grid_view)),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Obx(
//               () => MasonryGridView.builder(
//                 mainAxisSpacing: 16,
//                 crossAxisSpacing: 16,
//                 itemCount: 10,
//                 gridDelegate:
//                     const SliverSimpleGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2),
//                 itemBuilder: (context, index) {
//                   return Container(
//                     color: Colors.purple,
//                     height: 200,
//                     width: 100,
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );