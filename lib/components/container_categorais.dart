import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:segunda_prova/models/listas/lista_gabinetes.dart';
import 'package:segunda_prova/models/listas/lista_headsets.dart';
import 'package:segunda_prova/models/listas/lista_monitores.dart';
import 'package:segunda_prova/models/listas/lista_mouses.dart';
import 'package:segunda_prova/models/listas/lista_placas_vga.dart';
import 'package:segunda_prova/models/listas/lista_processadores.dart';
import 'package:segunda_prova/models/listas/lista_categorias.dart';
import 'package:segunda_prova/models/listas/lista_teclados.dart';
import 'package:segunda_prova/pages/categorias_page.dart';

// ignore: must_be_immutable
class ContainerCategorias extends StatelessWidget {
  ContainerCategorias({super.key});
  
  final ListaCategorias listaCategorias = ListaCategorias();
  final List listas = [
    ListaProcessadores().listaProcessadores,
    ListaGabinete().listaGabinete,
    ListaHeadSets().listaHeadSets,
    ListaMonitores().listaMonitores,
    ListaMouses().listaMouses,
    ListaPlacasVga().listaPlacasVga,
    ListaTeclados().listaTeclados,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Categorias',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 110,
          child: ListView.builder(
            itemCount: listaCategorias.listaCategorias.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final containerR = listaCategorias.listaCategorias[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: CategoriasPage(containerR, objetos: listas[index]),
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 200),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
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
                        child: Image.asset(containerR.imagePath),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Text(containerR.nome),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
