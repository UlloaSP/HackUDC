import 'dart:convert';

import 'package:disashop_app/Back/detail_form.dart';
import 'package:disashop_app/Back/forms.dart';
import 'package:http/http.dart' as http;

const uri = 'https://3a6e0ad2-8516-4096-b443-862e7bda0f20.mock.pstmn.io/api/v1';

class BackController {
  Future<List<Forms>> getFormsTypeList() async {
    try {
      List<dynamic> jsonData =
          json.decode(await getResponse(Uri.parse('$uri/formTypes'), null));
      List<Forms> formstypeslist = [];
      for (var element in jsonData) {
        formstypeslist.add(Forms.fromJson(element));
      }
      return formstypeslist;
    } catch (e) {
      throw 'Exception occurred: $e';
    }
  }

  Future<DetailsForms> getDetailFormsType(int id) async {
    try {
      Map<String, dynamic> jsonData =
          json.decode(await getResponse(Uri.parse('$uri/formTypes/$id'), id));
      return DetailsForms.fromJson(jsonData);
    } catch (e) {
      throw 'Exception occurred: $e';
    }
  }

  Future<dynamic> getResponse(Uri url, int? id) async {
    try {
      var response = await http.get(url);
      switch (response.statusCode) {
        case 200:
          return response.body;
        case 404:
          throw Exception("Not Found");
        case 500:
          throw Exception("Internal Server Error");
        default:
          throw Exception("Unexpected status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching data: $e");
    }
  }
}
