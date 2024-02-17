import 'package:flutter/cupertino.dart';

import '../../Back/back.dart';
import '../../Back/forms.dart';

class FormController extends ChangeNotifier {
  List<Forms> createdForms = [
    Forms(1, "Formulario de registro", null),
    Forms(2, "Formulario de contacto", null),
    Forms(3, "Formulario de comentarios", null)
  ];

  List<Forms> plantillas = [];

  List<Map> actualInputList = [];

  void getFormTypes() async {
    plantillas.addAll(await BackController().getFormsTypeList());
    notifyListeners();
  }

  void getSpecificFormType(int id) async {
    actualInputList.addAll(
        (await BackController().getDetailFormsType(id)) as Iterable<Map>);
  }

  void getForms() async {
    // TODO
  }

  void addNewForm() async {
    // TODO
  }

  void getSpecificForm() async {
    // TODO
  }
}
