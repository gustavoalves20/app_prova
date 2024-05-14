import 'package:flutter/material.dart';
import 'package:segunda_prova/models/listas/lista_draw.dart';
import 'package:segunda_prova/shared/tema.dart';

class MeuDraw extends StatefulWidget {
  const MeuDraw({super.key});

  @override
  State<MeuDraw> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MeuDraw> {
  final ListaDraw listaDraw = ListaDraw();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Tema().corAzul,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(Tema().logo),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listaDraw.listaDraw.length,
                itemBuilder: (context, index ) {
                  final nome = listaDraw.listaDraw[index];
                  final icon = Icon(nome.icon);
                  return ListTile(
                    onTap: () {},
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: icon,
                    title: Text(nome.nome),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
