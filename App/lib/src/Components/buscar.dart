import 'package:flutter/material.dart';

class Buscar extends StatelessWidget {
  const Buscar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: TextField(
        style: const TextStyle(color: Colors.black, fontSize: 16),
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
            suffixIcon: Material(
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            border: InputBorder.none,
            hintText: "Buscar Produtos"),
      ),
    );
  }
}
