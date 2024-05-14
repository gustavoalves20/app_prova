import 'package:segunda_prova/models/parametros/parametros_promocoes.dart';

class ListaPromocoes {
  List<ParametrosPromocoes> listaPromocoes = [
  ParametrosPromocoes(imagePath: 'assets/images/promocoes/promo_notebook.jpg'),
  ParametrosPromocoes(imagePath: 'assets/images/promocoes/promo_pc.webp'),
  ParametrosPromocoes(imagePath: 'assets/images/promocoes/promo_kabum.webp'),
  ];

  List<ParametrosPromocoes> getListaImagens() {
    return listaPromocoes;
  }
}