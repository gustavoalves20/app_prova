import 'package:flutter/material.dart';
import 'package:segunda_prova/components/card_categorias.dart';
import 'package:segunda_prova/models/parametros/parametros_container_redondo.dart';
import 'package:segunda_prova/shared/tema.dart';

// ignore: must_be_immutable
class CategoriasPage extends StatefulWidget {
  List objetos;
  final ParametrosContainerRedondo parametrosContainerRedondo;
   CategoriasPage(this.parametrosContainerRedondo,{required this.objetos, super.key});

  @override
  State<CategoriasPage> createState() => _CategoriasPageState();
}

class _CategoriasPageState extends State<CategoriasPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Tema().corAzul,
        iconTheme: IconThemeData(color: Tema().corBranca),
        title: Text(
          'Categorias',
          style: TextStyle(color: Tema().corBranca),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Text(
                widget.parametrosContainerRedondo.nome,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 20),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.51,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: widget.objetos.length,
              itemBuilder: (context, index) {
                final produtos = widget.objetos[index];
                return CardCategorias(produtos);
              },
            ),
          ],
        ),
      ),
    );
  }
}
