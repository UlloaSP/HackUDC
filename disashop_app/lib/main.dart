import 'package:disashop_app/Front/Controllers/form_controller.dart';
import 'package:disashop_app/Front/Views/view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => FormController(),
      child: const DynamicForms(),
    ),
  );
}

class DynamicForms extends StatelessWidget {
  const DynamicForms({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dynamic Forms',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromRGBO(22, 22, 53, 1),
        scaffoldBackgroundColor: const Color.fromRGBO(22, 22, 53, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(22, 22, 53, 1),
        ),
      ),
      home: const ActualView(),
    );
  }
}
