import 'package:aula_template/src/Components/cabecalho.dart';
import 'package:aula_template/src/Components/cardProdutos.dart';
import 'package:aula_template/src/Components/categorias.dart';
import 'package:aula_template/src/Models/produtosModel.dart';
import 'package:flutter/material.dart';
import '../Components/buscar.dart';
import '../Data/produtosData.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  List<ProdutosModel> _produtos = produtos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20.0, top: 30),
        children: [
          const Cabecalho(),
          AreaCategoria(),
          const Buscar(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Produtos mais vendidos",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              GestureDetector(
                onTap: () {
                  debugPrint("Pressionou Ver todos");
                },
                child: const Text(
                  "Ver Todos",
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: _produtos.map(_produtosItem).toList(),
          )
        ],
      ),
    );
  }

  Widget _produtosItem(ProdutosModel produto) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: CardProduto(
          id: produto.id,
          nome: produto.nome,
          imagem: produto.imagem,
          categoria: produto.categoria,
          valor: produto.valor,
          desconto: produto.desconto,
          avaiacoes: produto.avaliacoes
          ),
    );
  }
}
