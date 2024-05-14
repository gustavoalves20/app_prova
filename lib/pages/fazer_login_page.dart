import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:segunda_prova/pages/criar_conta_page.dart';
import 'package:segunda_prova/pages/principal_page.dart';
import 'package:segunda_prova/shared/tema.dart';
class FazerLoginPage extends StatefulWidget {
  const FazerLoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  FazerLogin createState() => FazerLogin();
}

class FazerLogin extends State<FazerLoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool ocultarSenha = true;

  void mostrarSenha() {
    setState(() {
      ocultarSenha = !ocultarSenha;
    });
  }

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                Tema().logo,
                height: 150,
                width: largura - 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(

                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: _passwordController,
                  obscureText: ocultarSenha,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Senha',
                    suffixIcon: IconButton(
                      onPressed: mostrarSenha,
                      icon: Icon(ocultarSenha ? Icons.visibility : Icons.visibility_off),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: Tema().corAzul,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    minimumSize: Size(largura, 50),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        child: const PrincipalPage(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 200),
                      ),
                    );
                  },
                  child: const Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: Divider(
                      color: Tema().corAzul,
                    ),
                  ),
                  const Text(
                    'OU',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    child: Divider(
                      color: Tema().corAzul,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.g_mobiledata_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        'Continue com Google',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Não tem conta?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const CreateAccountPage(),
                            type: PageTransitionType.rightToLeft,
                            duration: const Duration(milliseconds: 200),
                          ),
                        );
                      },
                      child: Text(
                        'Criar conta',
                        style: TextStyle(
                          color: Tema().corAzul,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
