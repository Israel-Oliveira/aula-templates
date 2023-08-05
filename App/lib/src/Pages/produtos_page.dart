import 'package:flutter/material.dart';

class ProdutosPage extends StatefulWidget {
  const ProdutosPage({super.key});

  @override
  State<ProdutosPage> createState() => _ProdutosState();
}

class _ProdutosState extends State<ProdutosPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Produtos Page"),
    );
  }
}