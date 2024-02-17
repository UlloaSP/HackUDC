import 'dart:convert';

import 'package:disashop_app/Back/detail_form.dart';
import 'package:disashop_app/Back/forms.dart';
import 'package:http/http.dart' as http;

const uri =
    'https://3a6e0ad2-8516-4096-b443-862e7bda0f20.mock.pstmn.io/api/v1';


void main() async{
  int id = 1;
  DetailsForms h = await BackController().getDetailFormsType(id);
  print( h.title_field.field_description);
}

class BackController {
  Future<List<Forms>> getFormsTypeList() async {
    var url = Uri.parse('$uri/formTypes');

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
    var url = Uri.parse('$uri/formTypes/$id');

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String,dynamic> jsonData = json.decode(response.body);
        print(jsonData['title_description']);
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
