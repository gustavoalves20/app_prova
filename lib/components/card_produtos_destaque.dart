import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:segunda_prova/models/listas/lista_produtos_destaque.dart';
import 'package:segunda_prova/pages/produtos_destaque_page.dart';
import 'package:segunda_prova/shared/tema.dart';

class CardProdutosDestaque extends StatelessWidget {
  final ListaProdutosDestaque listaProdutosDestaque = ListaProdutosDestaque();

  // ignore: use_key_in_widget_constructors
  CardProdutosDestaque({Key? key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: listaProdutosDestaque.listaProdutosDestaque.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final categoryC = listaProdutosDestaque.listaProdutosDestaque[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  child: ProdutosDestaquePage(categoryC),
                  type: PageTransitionType.rightToLeft,
                  duration: const Duration(milliseconds: 200),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
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
                            Icons.favorite,
                            color: Tema().corAzul,
                          ),
                        ),
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
                      categoryC.imagePath,
                      height: 90,
                    ),
                    Text(
                      categoryC.nome,
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
                            Text(categoryC.avaliacao),
                          ],
                        ),
                        const Text('|'),
                        Text(
                          'R\$ ${categoryC.preco}',
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
            ),
          );
        },
      ),
    );
  }
}
