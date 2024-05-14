import 'package:flutter/material.dart';
import 'package:segunda_prova/pages/fazer_login_page.dart';
import 'package:segunda_prova/shared/tema.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<TelaInicial> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FazerLoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Tema().logo,
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              Text(
                'Saudações,\n agradecemos por usar\n nosso aplicativo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Tema().corAzul,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
