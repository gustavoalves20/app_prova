import 'package:flutter/material.dart';
import 'package:segunda_prova/models/listas/lista_promocoes.dart';
import 'package:segunda_prova/shared/tema.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewImages extends StatefulWidget {
  const PageViewImages({super.key});

  @override
  State<PageViewImages> createState() => _PageViewImagesState();
}

class _PageViewImagesState extends State<PageViewImages> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(viewportFraction: 0.95);
    final ListaPromocoes listaPromocoes = ListaPromocoes();
    
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: pageController,
            itemCount: listaPromocoes.listaPromocoes.length,
            itemBuilder: (context, index) {
              final imagens = listaPromocoes.listaPromocoes[index];
              return Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.grey,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 1),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(imagens.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SmoothPageIndicator(
            controller: pageController,
            count: listaPromocoes.listaPromocoes.length,
            effect: ExpandingDotsEffect(
              dotColor: Colors.grey.shade400,
              activeDotColor: Tema().corAzul,
              dotHeight: 7,
              dotWidth: 7,
            ),
          ),
        ),
      ],
    );
  }
}
