import 'dart:convert';

import 'package:disashop_app/Back/forms.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const URI = 'https://a765843d-1df1-4cef-a052-006dc16f2965.mock.pstmn.io/api/v1/formTypes';

void main()  async{
 List<Forms> h = await BackController()._getFormsTypeList();
 print(h);
}

class BackController{

  Future<List<Forms>> _getFormsTypeList() async{
      var url = Uri.parse(URI);

      try {
      var response = await http.get(url);
      
      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        print(jsonData);
        List<Forms> formstypeslist = [];
        jsonData.forEach((element) {formstypeslist.add(Forms.fromJson(element));});
        print(formstypeslist.first.form_type_name);
        return formstypeslist;
      } else {
        throw 'Request failed with status: ${response.statusCode}';
      }
    } catch (e) {
      // Handle any potential exceptions
      throw 'Exception occurred: $e';
    }
  }

}