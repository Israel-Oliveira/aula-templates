import 'package:aula_template/src/Models/categoriasModel.dart';
import 'package:flutter/material.dart';

import '../Data/categoriasData.dart';
import 'cardCategorias.dart';

class AreaCategoria extends StatelessWidget {
  AreaCategoria({super.key});

  final List<CategoriasModel> _categorias = categorias;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categorias.length,
        itemBuilder: (BuildContext context, int index) {
          return CardCategorias(
              nome: _categorias[index].nome,
              imagem: _categorias[index].imagem,
              totalProd: _categorias[index].totalProd);
        },
      ),
    );
  }
}
