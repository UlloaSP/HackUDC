import 'package:flutter/material.dart';

import 'DynamicFormsView.dart';

class ActualView extends StatefulWidget {
  const ActualView({super.key});

  @override
  State<ActualView> createState() => _ActualViewState();
}

class _ActualViewState extends State<ActualView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Scaffold(
            body: OrientationBuilder(builder: (context, orientation) {
              return DynamicFormsView(orientation: orientation);
            }),
          );
        },
      ),
    );
  }
}
