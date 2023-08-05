import 'package:aula_template/src/Pages/tela_inicial.dart';
import 'package:flutter/material.dart';

import '../Pages/carrinho_pages.dart';
import '../Pages/produtos_page.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int abaAtual = 0;
  late TelaInicial telaInicial;
  late CarrinhoPage carrinho;
  late ProdutosPage produtos;

  late List<Widget> pages;

  late Widget pageAtual;

  @override
  void initState() {
    telaInicial = TelaInicial();
    carrinho = CarrinhoPage();
    produtos = ProdutosPage();

    pages = [telaInicial, carrinho, produtos];
    pageAtual = telaInicial;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          abaAtual == 0
              ? "Meu aplicativo"
              : abaAtual == 1
                  ? "Carrinho"
                  : abaAtual == 2
                      ? "Produtos"
                      : "Categorias",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
              ),
              color: Colors.black,
              onPressed: () {}),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: abaAtual,
        onTap: (index) {
          setState(() {
            abaAtual = index;
            pageAtual = pages[index];
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "carrinho"),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded), label: "produtos"),
        ],
      ),
      body: pageAtual,
    ));
  }
}
