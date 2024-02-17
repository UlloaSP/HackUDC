import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldContainer extends StatefulWidget {
  const FieldContainer({
    super.key,
  });

  @override
  State<FieldContainer> createState() => _FieldContainerState();
}

class _FieldContainerState extends State<FieldContainer> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.text = '';
    return Container(
      width: double.infinity,
      height: 30000,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(31, 31, 62, 0.7),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-z.]')),
                  LengthLimitingTextInputFormatter(100),
                ],
                controller: _controller,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24, color: Colors.white),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ingrese un valor',
                  hintStyle: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(255, 255, 255, 0.5)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
