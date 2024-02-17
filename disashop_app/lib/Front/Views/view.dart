import 'package:disashop_app/Front/Controllers/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'form_view.dart';

class ActualView extends StatefulWidget {
  const ActualView({super.key});

  @override
  State<ActualView> createState() => _ActualViewState();
}

class _ActualViewState extends State<ActualView> {
  @override
  Widget build(BuildContext context) {
    Provider.of<FormController>(context, listen: false).getFormTypes();
    Provider.of<FormController>(context, listen: false).getForms();
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Consumer<FormController>(builder: (context, data, child) {
            return FormView(orientation: orientation);
          });
        },
      ),
    );
  }
}
