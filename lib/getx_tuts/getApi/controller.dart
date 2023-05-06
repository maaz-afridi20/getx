import 'dart:convert';

import 'package:getx_tutorials/getx_tuts/getApi/services.dart';
import 'package:http/http.dart' as http;

class ControllerClass {
  List<Placeholder> placeholdersList = [];

  Future<List<Placeholder>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    var jsonDecodedData = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in jsonDecodedData) {
        placeholdersList.add(
          Placeholder.fromJson(index),
        );
      }
      return placeholdersList;
    } else {
      return placeholdersList;
    }
  }
}
