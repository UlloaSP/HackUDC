import 'package:flutter/material.dart';

class FooterContainer extends StatelessWidget {
  const FooterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(15, 20, 53, 1),
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Implementa la lógica del botón anterior aquí
            },
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            mini: true,
            child: const Icon(Icons.arrow_back),
          ),
          FloatingActionButton(
            onPressed: () {
              // Implementa la lógica del botón siguiente aquí
            },
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            mini: true,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
