import 'package:disashop_app/Front/Controllers/form_controller.dart';
import 'package:disashop_app/Front/Views/plantilla_view.dart';
import 'package:disashop_app/Front/Views/utils/containers/field_container.dart';
import 'package:disashop_app/Front/Views/utils/headers/app_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsView extends StatefulWidget {
  final Orientation orientation;

  const DetailsView({super.key, required this.orientation});

  @override
  State<DetailsView> createState() => _DetailsView();
}

class _DetailsView extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const TitleContainer(headerText: "DETALLES"),
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
                      PlantillaView(orientation: widget.orientation)),
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
    var actualInputList = context.watch<FormController>().actualInputList;
    return Expanded(
      child: GridView.builder(
        key: const ValueKey("GridView"),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3.5,
        ),
        itemCount: actualInputList.length,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(7.0),
            child: FieldContainer(),
          );
        },
      ),
    );
  }

  Widget _buildHorizontalView() {
    var actualInputList = context.watch<FormController>().actualInputList;
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.75,
        ),
        itemCount: actualInputList.length,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(7.0),
            child: FieldContainer(),
          );
        },
      ),
    );
  }
}
