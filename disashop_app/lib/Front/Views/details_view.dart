import 'package:disashop_app/Front/Views/plantilla_view.dart';
import 'package:disashop_app/Front/Views/utils/containers/field_container.dart';
import 'package:disashop_app/Front/Views/utils/footers/footer_container.dart';
import 'package:disashop_app/Front/Views/utils/headers/app_header.dart';
import 'package:flutter/material.dart';

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
            _buildVerticalView(),
            const FooterContainer(),
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
    return Expanded(
      child: Card(
        color: Colors.grey[900], // Color de fondo más claro
        child: const FieldContainer(),
      ),
    );
  }
}
