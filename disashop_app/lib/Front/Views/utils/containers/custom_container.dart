import 'package:disashop_app/Front/Views/details_view.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String name;
  final int id;

  const CustomContainer({
    super.key,
    required this.name,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const DetailsView(orientation: Orientation.portrait)),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(31, 31, 62, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Center(
          child: SizedBox(
            width: 200,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 191, 255, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
