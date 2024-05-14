import 'package:flutter/material.dart';
import 'package:segunda_prova/models/listas/lista_produtos_destaque.dart';
import 'package:segunda_prova/shared/tema.dart';

class CarrinhoPage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const CarrinhoPage({Key? key});

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  final ListaProdutosDestaque listaProdutosDestaque = ListaProdutosDestaque();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Tema().corAzul,
        centerTitle: true,
        iconTheme: IconThemeData(color: Tema().corBranca),
        title: const Text(
          'Meu carrinho',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                final produtosCarrinho = listaProdutosDestaque.listaProdutosDestaque[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15,  bottom: 10),
                  child: Container(
                    height: 170,
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              produtosCarrinho.imagePath,
                              height: 120,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      produtosCarrinho.nome,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                                Text(
                                  produtosCarrinho.descricao,
                                  style: const TextStyle(fontSize: 12),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Tema().corAmarela,
                                    ),
                                    Text(produtosCarrinho.avaliacao),
                                    const Text(' | '),
                                    Container(
                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        '${produtosCarrinho.vendidos} vendidos',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'R\$ ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          produtosCarrinho.preco,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.remove),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5),
                                          child: Text('0'),
                                        ),
                                        Icon(Icons.add)
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Tema().corAzul,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(300, 50),
              ),
              onPressed: () {},
              child: const Text(
                'Finalizar compra',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
