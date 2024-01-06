import 'package:flutter/material.dart';

class CardCarrinho extends StatefulWidget {
  const CardCarrinho({super.key});

  @override
  State<CardCarrinho> createState() => _CardCarrinhoState();
}

class _CardCarrinhoState extends State<CardCarrinho> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD3D3D3), width: 2),
                  borderRadius: BorderRadius.circular(10.0)),
              width: 45,
              height: 73,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Color(0xFFD3D3D3),
                      ),
                    ),
                    Text(
                      "0",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xFFD3D3D3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/pastel.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(35),
                // boxShadow: [
                //   BoxShadow(
                //       color: Colors.black,
                //       blurRadius: 5.0,
                //       offset: Offset(0, 2)
                //       )
                // ]
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pastel de Flango",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "15,00",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.close))
          ],
        ),
      ),
    );
  }
}

/*

*/
