import 'package:disashop_app/Back/createdforms.dart';
import 'package:flutter/cupertino.dart';

import '../../Back/back.dart';
import '../../Back/forms.dart';

class FormController extends ChangeNotifier {
  List<CreatedForms> createdForms = [];

  List<Forms> plantillas = [];

  List<Map> actualInputList = [];

  void getFormTypes() async {
    plantillas.addAll(await BackController().getFormsTypeList());
    notifyListeners();
  }

  void getSpecificFormType(int id) async {
    actualInputList.addAll(
        (await BackController().getDetailFormsType(id)) as Iterable<Map>);
    notifyListeners();
  }

  void getForms() async {
    createdForms.addAll(await BackController().getFormsList());
    notifyListeners();
  }

  void addNewForm() async {
    // TODO
  }

  void getSpecificForm() async {
    // TODO
  }
}
