import 'package:flutter/material.dart';

class FieldContainer extends StatelessWidget {
  const FieldContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 100,
      child: Center(
        child: SizedBox(
          width: 200,
          child: Text(
            "Funciona",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 191, 255, 1),
            ),
          ),
        ),
      ),
    );
  }
}
