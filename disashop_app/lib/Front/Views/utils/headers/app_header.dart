import 'package:flutter/material.dart';

class TitleContainer extends StatefulWidget {
  final String headerText;

  const TitleContainer({super.key, required this.headerText});

  @override
  State<TitleContainer> createState() => _TitleContainer();
}

class _TitleContainer extends State<TitleContainer> {
  final EdgeInsets _padding =
      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(15, 20, 53, 1),
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: _padding,
              child: Text(
                widget.headerText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
