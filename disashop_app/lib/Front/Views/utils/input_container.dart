import 'package:flutter/material.dart';

class InputContainer extends StatefulWidget {
  final String name;

  const InputContainer({
    super.key,
    required this.name,
  });

  @override
  State<InputContainer> createState() => _InputContainerState();
}

class _InputContainerState extends State<InputContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(31, 31, 62, 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: SizedBox(
          width: 200,
          child: Text(
            widget.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
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