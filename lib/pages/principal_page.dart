import 'package:flutter/material.dart';
import 'package:segunda_prova/components/bottom_nav_bar.dart';
import 'package:segunda_prova/pages/carrinho_page.dart';
import 'package:segunda_prova/pages/conteudo_principal_page.dart';
import 'package:segunda_prova/pages/favoritos_page.dart';
import 'package:segunda_prova/pages/meu_perfil_page.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {

  int _indexSelecionado = 0;

  void navigateBottomBar(int novoIndex) {
    setState(() {
      _indexSelecionado = novoIndex;
    });
  }

  final List _pages = [
    const ConteudoPrincipalPage(),
    const FavoritosPage(),
    const CarrinhoPage(),
    const MeuPerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabeChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_indexSelecionado],
    );
  }
}