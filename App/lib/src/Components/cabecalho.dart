import 'package:flutter/material.dart';

class Cabecalho extends StatefulWidget {
  const Cabecalho({super.key});

  @override
  State<Cabecalho> createState() => _CabecalhoState();
}

class _CabecalhoState extends State<Cabecalho> {
  final textoTitulo = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final textoSubtitulo = const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "Oque você deseja comer",
              style: textoTitulo,
            ),
            Text(
              "Temos diversas opções",
              style: textoSubtitulo,
            )
          ],
        ),
        const Icon(Icons.notification_add)
      ],
    );
  }
}
