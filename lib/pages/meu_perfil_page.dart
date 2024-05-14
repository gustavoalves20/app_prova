import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:segunda_prova/models/listas/lista_nomes_icones_perfil.dart';
import 'package:segunda_prova/models/parametros/parametros_login_conta.dart';
import 'package:segunda_prova/pages/fazer_login_page.dart';
import 'package:segunda_prova/shared/tema.dart';

class MeuPerfilPage extends StatefulWidget {
  const MeuPerfilPage({super.key});

  @override
  State<MeuPerfilPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MeuPerfilPage> {
  final imagePicker = ImagePicker();
  ParametrosLoginConta myprofile = ParametrosLoginConta(name: 'Gustavo', email: 'guguinha22@gmail.com');
  ListaNomeIconesPerfil listaNomeIconesPerfil = ListaNomeIconesPerfil();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Tema().corAzul,
        centerTitle: true,
        title: const Text(
          'Minha conta',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(Tema().minhaFoto),
                    radius: 40,                  
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bem-vindo, ${myprofile.name}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Tema().corAzul,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                myprofile.email,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listaNomeIconesPerfil.listaNomeIconesPerfil.length,
                  itemBuilder: (context, index) {
                    final nome = listaNomeIconesPerfil.listaNomeIconesPerfil[index];
                    final icon = Icon(nome.icon);
                    return ListTile(
                      shape: const BorderDirectional(bottom: BorderSide(color: Color.fromRGBO(238, 238, 238, 1))),
                      onTap: () {},
                      leading: icon,
                      title: Text(nome.nome),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                    child: const FazerLoginPage(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 200),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Tema().corAzul,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(300, 50),
              ),
              child: const Text(
                'Sair',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
