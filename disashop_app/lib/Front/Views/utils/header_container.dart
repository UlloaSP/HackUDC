import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HeaderContainer extends StatefulWidget {
  final TextEditingController searchController;

  const HeaderContainer({super.key, required this.searchController});

  @override
  State<HeaderContainer> createState() => _HeaderContainer();
}

class _HeaderContainer extends State<HeaderContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(15, 20, 53, 1),
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18.0),
              child: Container(
                key: const ValueKey('Search Bar'),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: TextField(
                  key: const ValueKey('SearchText'),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
                    LengthLimitingTextInputFormatter(31),
                  ],
                  controller: widget.searchController,
                  decoration: InputDecoration(
                    hintText: 'Buscar...',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                  ),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
