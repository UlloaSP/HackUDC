import 'package:disashop_app/Front/Controllers/form_controller.dart';
import 'package:disashop_app/Front/Views/utils/app_header.dart';
import 'package:disashop_app/Front/Views/utils/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'form_view.dart';

class PlantillaView extends StatefulWidget {
  final Orientation orientation;

  const PlantillaView({super.key, required this.orientation});

  @override
  State<PlantillaView> createState() => _PlantillaView();
}

class _PlantillaView extends State<PlantillaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const TitleContainer(headerText: "FORM SHIT"),
            (widget.orientation == Orientation.portrait)
                ? _buildVerticalView()
                : _buildHorizontalView(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      FormView(orientation: widget.orientation)),
            );
          },
          backgroundColor: Colors.blue, // Color de fondo del botón
          elevation: 10.0,
          child: const Icon(
            Icons.arrow_back,
            size: 32, // Tamaño del icono
          ), // Elevación del botón
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .miniStartTop // Posición del botón flotante
        );
  }

  Widget _buildVerticalView() {
    var plantillas = context.watch<FormController>().plantillas;
    return Expanded(
      child: GridView.builder(
        key: const ValueKey("GridView"),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3.5,
        ),
        itemCount: plantillas.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: CustomContainer(
              name: plantillas[index].form_typeName,
            ),
          );
        },
      ),
    );
  }

  Widget _buildHorizontalView() {
    var plantillas = context.watch<FormController>().plantillas;
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.75,
        ),
        itemCount: plantillas.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: CustomContainer(
              name: plantillas[index].form_typeName,
            ),
          );
        },
      ),
    );
  }
}
