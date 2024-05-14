import 'package:flutter/material.dart';
import 'package:segunda_prova/components/card_cadeiras.dart';
import 'package:segunda_prova/components/card_produtos_destaque.dart';
import 'package:segunda_prova/components/container_categorais.dart';
import 'package:segunda_prova/components/meu_draw.dart';
import 'package:segunda_prova/components/page_view_images.dart';
import 'package:segunda_prova/models/listas/lista_cadeiras.dart';
import 'package:segunda_prova/models/listas/lista_promocoes.dart';
import 'package:segunda_prova/shared/tema.dart';

class ConteudoPrincipalPage extends StatefulWidget {
  const ConteudoPrincipalPage({super.key});

  @override
  State<ConteudoPrincipalPage> createState() => _ConteudoPrincipalPageState();
}

class _ConteudoPrincipalPageState extends State<ConteudoPrincipalPage> {
  final TextEditingController _pesquisarController = TextEditingController();
  final ListaCadeiras listaCadeiras = ListaCadeiras();
  final ListaPromocoes listaImagens = ListaPromocoes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Tema().corAzul,
        title: const Text(
          'Bem-vindo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: const MeuDraw(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
              child: TextField(
                cursorColor: Tema().corAzul,
                controller: _pesquisarController,
                decoration: InputDecoration(
                  hintText: 'Pesquisar produto',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
            ContainerCategorias(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Promoções',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Tema().corAzul,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const PageViewImages(),            
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Produtos em destaque',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Tema().corAzul,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CardProdutosDestaque(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Cadeiras gamer',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Tema().corAzul,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.59,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: listaCadeiras.listaCadeiras.length,
              itemBuilder: (context, index) {
                final cadeiras = listaCadeiras.listaCadeiras[index];
                return CardCadeiras(cadeiras);
              },
            ),
          ],
        ),
      ),
    );
  }
}
