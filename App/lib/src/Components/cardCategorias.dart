// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardCategorias extends StatelessWidget {
  final String nome;
  final String imagem;
  final int totalProd;

  const CardCategorias(
      {super.key, required this.nome, required this.imagem, required this.totalProd});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Image(
                image: AssetImage(imagem),
                height: 65,
                width: 65,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(nome,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(
                    "$totalProd Produtos",
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
