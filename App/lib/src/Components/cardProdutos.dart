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
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: Stack(
        children: [
          Container(
            height: 230.0,
            width: 340.0,
            child: Image(
              image: AssetImage(widget.imagem),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              left: 0.0,
              bottom: 0.0,
              width: 340,
              height: 80,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Colors.black,
                      Colors.black54,
                      Colors.black26,
                      Colors.transparent
                    ])),
              )),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nome,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        if (widget.avaiacoes >= 1)
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade600,
                            size: 16,
                          ),
                        if (widget.avaiacoes >= 2)
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade600,
                            size: 16,
                          ),
                        if (widget.avaiacoes >= 3)
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade600,
                            size: 16,
                          ),
                        if (widget.avaiacoes >= 4)
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade600,
                            size: 16,
                          ),
                        if (widget.avaiacoes >= 5)
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade600,
                            size: 16,
                          ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "(${widget.avaiacoes} Avaliações)",
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.valor.toString(),
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent),
                    ),
                    const Text(
                      "Add",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
