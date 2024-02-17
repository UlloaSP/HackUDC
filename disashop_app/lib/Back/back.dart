import 'dart:convert';

import 'package:disashop_app/Back/detail_form.dart';
import 'package:disashop_app/Back/forms.dart';
import 'package:http/http.dart' as http;

const URI =
    'https://a765843d-1df1-4cef-a052-006dc16f2965.mock.pstmn.io/api/v1/formTypes';

void main() async {
  int id = 1;
  DetailsForms h = await BackController().getDetailFormsType(id);
  print(h.titleField.fieldDescription);
}

class BackController {
  Future<List<Forms>> getFormsTypeList() async {
    var url = Uri.parse(URI);

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        List<Forms> formstypeslist = [];
        for (var element in jsonData) {
          formstypeslist.add(Forms.fromJson(element));
        }
        return formstypeslist;
      } else {
        throw 'Request failed with status: ${response.statusCode}';
      }
    } catch (e) {
      // Handle any potential exceptions
      throw 'Exception occurred: $e';
    }
  }

  Future<DetailsForms> getDetailFormsType(int id) async {
    var url = Uri.parse('$URI/$id');

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        return DetailsForms.fromJson(jsonData);
      } else {
        throw 'Request failed with status: ${response.statusCode}';
      }
    } catch (e) {
      // Handle any potential exceptions
      throw 'Exception occurred: $e';
    }
  }
}
