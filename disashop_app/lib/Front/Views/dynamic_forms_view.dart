import 'package:disashop_app/Front/Views/utils/custom_container.dart';
import 'package:disashop_app/Front/Views/utils/header_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicFormsView extends StatefulWidget {
  final Orientation orientation;

  const DynamicFormsView({super.key, required this.orientation});

  @override
  State<DynamicFormsView> createState() => _DynamicFormsViewState();
}

class _DynamicFormsViewState extends State<DynamicFormsView> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderContainer(
            key: const ValueKey('HeaderContainer'),
            searchController: _searchController),
        (widget.orientation == Orientation.portrait)
            ? _buildVerticalView()
            : _buildHorizontalView(),
      ],
    );
  }

  Widget _buildVerticalView() {
    return Expanded(
      child: GridView.builder(
        key: const ValueKey("GridView"),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3.5,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(7.0),
            child: CustomContainer(
              name: "Form 1",
            ),
          );
        },
      ),
    );
  }

  Widget _buildHorizontalView() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.75,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(7.0),
            child: CustomContainer(
              name: "Form 1",
            ),
          );
        },
      ),
    );
  }
}
