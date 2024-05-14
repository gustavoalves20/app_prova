import 'package:flutter/material.dart';
import 'package:segunda_prova/models/listas/lista_categorias.dart';
import 'package:segunda_prova/shared/tema.dart';

import '../models/listas/lista_produtos_destaque.dart';

class FavoritosPage extends StatefulWidget {
  const FavoritosPage({super.key});

  @override
  State<FavoritosPage> createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  final ListaCategorias listaCategorias = ListaCategorias();
  final ListaProdutosDestaque listaProdutosDestaque = ListaProdutosDestaque();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Tema().corAzul,
        iconTheme: IconThemeData(color: Tema().corBranca),
        title: Text(
          'Meus favoritos',
          style: TextStyle(
            color: Tema().corBranca,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                final listaFavoritos = listaProdutosDestaque.listaProdutosDestaque[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 1,
                          blurStyle: BlurStyle.normal,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Tema().corAzul,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          listaFavoritos.imagePath,
                          height: 90,
                        ),
                        Text(
                          listaFavoritos.nome,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Tema().corAmarela,
                                ),
                                Text(listaFavoritos.avaliacao),
                              ],
                            ),
                            const Text('|'),
                            Text(
                              'R\$ ${listaFavoritos.preco}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            alignment: Alignment.center,
                            width: 140,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Tema().corAzul,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'Comprar',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
