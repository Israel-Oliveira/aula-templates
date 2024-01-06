import 'package:flutter/material.dart';

import '../Components/cardCarrinho.dart';

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({super.key});

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.vertical,
        children: [
          CardCarrinho(),
          CardCarrinho(),
          CardCarrinho(),
          CardCarrinho(),
        ],
      ),
      bottomNavigationBar: _totalContainer(),
    );
  }

  Widget _totalContainer() {
    return Container(
      height: 190,
      padding: EdgeInsets.only(left: 10, right: 10),
      margin: EdgeInsets.only(top: 30),
      child: Column(children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal:",
              style: TextStyle(
                  color: Color(0xFF9BA7C6),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "23,00",
              style: TextStyle(
                  color: Color(0xFF6C6D6D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Taxa de Entrega:",
              style: TextStyle(
                  color: Color(0xFF9BA7C6),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "3,00",
              style: TextStyle(
                  color: Color(0xFF6C6D6D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 2,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total:",
              style: TextStyle(
                  color: Color(0xFF9BA7C6),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "26,00",
              style: TextStyle(
                  color: Color(0xFF6C6D6D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {},
            child: Container(
              height: 50,
              child: Center(child: Text("FInalizar Pagamento")),
            ))
      ]),
    );
  }
}
