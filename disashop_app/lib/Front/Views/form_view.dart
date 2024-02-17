import 'package:disashop_app/Front/Controllers/form_controller.dart';
import 'package:disashop_app/Front/Views/plantilla_view.dart';
import 'package:disashop_app/Front/Views/utils/containers/custom_container.dart';
import 'package:disashop_app/Front/Views/utils/headers/header_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormView extends StatefulWidget {
  final Orientation orientation;

  const FormView({super.key, required this.orientation});

  @override
  State<FormView> createState() => _FormView();
}

class _FormView extends State<FormView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            HeaderContainer(searchController: _searchController),
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
            Icons.add,
            size: 32, // Tamaño del icono
          ), // Elevación del botón
        ),
        floatingActionButtonLocation:
            CustomFloatingActionButtonLocation() // Posición del botón flotante
        );
  }

  Widget _buildVerticalView() {
    var createdForms = context.watch<FormController>().createdForms;
    return Expanded(
      child: GridView.builder(
        key: const ValueKey("GridView"),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3.5,
        ),
        itemCount: createdForms.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: CustomContainer(
              name: createdForms[index].form_type_name,
            ),
          );
        },
      ),
    );
  }

  Widget _buildHorizontalView() {
    var createdForms = context.watch<FormController>().createdForms;
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.75,
        ),
        itemCount: createdForms.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: CustomContainer(
              name: createdForms[index].form_type_name,
            ),
          );
        },
      ),
    );
  }
}

class CustomFloatingActionButtonLocation extends StandardFabLocation {
  @override
  double getOffsetX(
      ScaffoldPrelayoutGeometry scaffoldGeometry, double adjustment) {
    return scaffoldGeometry.scaffoldSize.width -
        84.0 -
        adjustment; // Ajuste horizontal hacia la izquierda
  }

  @override
  double getOffsetY(
      ScaffoldPrelayoutGeometry scaffoldGeometry, double adjustment) {
    return scaffoldGeometry.scaffoldSize.height -
        86.0 -
        adjustment; // Ajuste vertical hacia arriba
  }
}
