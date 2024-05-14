import 'package:flutter/material.dart';
import 'package:segunda_prova/models/parametros/parametros_categorias.dart';
import 'package:segunda_prova/shared/tema.dart';

class CardCategorias extends StatelessWidget {
  final ParametrosCategorias categorias;
  const CardCategorias(this.categorias, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
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
            categorias.imagePath,
            height: 90,
          ),
          SizedBox(
            height: 40,
            child: Text(
              textAlign: TextAlign.center,
              categorias.nome,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 70,
            child: Text(
              textAlign: TextAlign.center,
              categorias.descricao,
              style: const TextStyle(
                fontSize: 12,
              ),
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
                  Text(categorias.avaliacao),
                ],
              ),
              const Text('|'),
              Text(
                'R\$ ${categorias.preco}',
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
    );
  }
}
