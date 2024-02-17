import 'package:flutter/cupertino.dart';

import '../../Back/forms.dart';

class FormController extends ChangeNotifier {
  List<Forms> createdForms = [
    Forms(1, "Formulario de registro"),
    Forms(2, "Formulario de contacto"),
    Forms(3, "Formulario de comentarios")
  ];

  List<Forms> plantillas = [
    Forms(1, "Mierda 3"),
    Forms(2, "Mierda 2"),
    Forms(3, "Mierda 1")
  ];

  List<Map> actualInputList = [];

  void getFormTypes() async {
    // TODO
  }

  void getSpecificFormType() async {
    // TODO
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
