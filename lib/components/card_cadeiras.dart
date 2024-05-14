import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:segunda_prova/models/parametros/parametros_produtos.dart';
import 'package:segunda_prova/pages/cadeiras_page.dart';
import 'package:segunda_prova/shared/tema.dart';

class CardCadeiras extends StatelessWidget {
  final ParametrosProdutos product;

  const CardCadeiras(this.product, {super.key});

  void _selectProduct(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        child: CadeirasPage(product),
        type: PageTransitionType.rightToLeft,
        duration: const Duration(milliseconds: 200),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => _selectProduct(context),
      child: Container(
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
              product.imagePath,
              height: 130,
            ),
            Text(
              product.nome,
              style: const TextStyle(fontWeight: FontWeight.bold),
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
                    Text('${product.avaliacao}'),
                  ],
                ),
                const Text('|'),
                Text(
                  'R\$ ${product.preco}',
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
                width: 150,
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
  }
}
