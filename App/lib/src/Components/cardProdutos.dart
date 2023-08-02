import 'package:flutter/material.dart';

class CardProduto extends StatefulWidget {
  final int id;
  final String nome, imagem, categoria;
  final double valor, desconto, avaiacoes;

  const CardProduto({
    super.key,
    required this.id,
    required this.nome,
    required this.imagem,
    required this.categoria,
    required this.valor,
    required this.desconto,
    required this.avaiacoes,
  });

  @override
  State<CardProduto> createState() => _CardProdutoState();
}

class _CardProdutoState extends State<CardProduto> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
