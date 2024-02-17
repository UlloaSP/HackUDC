import 'dart:convert';

import 'package:disashop_app/Back/createdforms.dart';
import 'package:disashop_app/Back/detail_form.dart';
import 'package:disashop_app/Back/forms.dart';
import 'package:http/http.dart' as http;

const uri = 'https://c48b6359-2b3c-4ab5-829b-32afa3da6640.mock.pstmn.io/api/v1';

class BackController {
  Future<List<Forms>> getFormsTypeList() async {
    var url = Uri.parse('$uri/formTypes');

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String,dynamic> jsonData = json.decode(response.body);
        List<Forms> formstypeslist = [];
          formstypeslist.add(Forms.fromJson(jsonData));
        
        return formstypeslist;
      } else {
        throw 'Request failed with status: ${response.statusCode}';
      }
    } catch (e) {
      // Handle any potential exceptions
      throw 'Exception occurred: $e';
    }
  }

  Future<List<CreatedForms>> getFormsList() async {
    var url = Uri.parse('$uri/forms?form_type_id=<integer>');

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic>jsonData = json.decode(response.body);
        List<CreatedForms> formstypeslist = [];
          jsonData.forEach((element) { formstypeslist.add(CreatedForms.fromJson(element));});
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