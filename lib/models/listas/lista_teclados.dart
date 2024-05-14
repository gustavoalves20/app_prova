import '../../../../models/parametros/parametros_categorias.dart';

class ListaTeclados {
  List<ParametrosCategorias> listaTeclados = [
    ParametrosCategorias(
      nome: 'Teclado Gamer Rise Mode',
      descricao: 'Teclado Gamer Rise Mode G1 Full, USB, Preto',
      preco: '33.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/teclados/teclado-rise-mode.jpg',
    ),
    ParametrosCategorias(
      nome: 'Teclado Mecânico Gamer HyperX',
      descricao: 'Teclado Mecânico Gamer HyperX Alloy MKW100, RGB, Switch Red, Full Size, US, Preto',
      preco: '250.00',
      avaliacao: '3.5',
      imagePath: 'assets/images/teclados/teclado-hyperx.jfif',
    ),
    ParametrosCategorias(
      nome: 'Teclado Mecânico Gamer Redragon',
      descricao: 'Teclado Mecânico Gamer Redragon Lakshmi K606R 60%, LED Rainbow, Switch Redragon MK II, ABNT2, Preto',
      preco: '200.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/teclados/teclado-redragon.jfif',
    ),
    ParametrosCategorias(
      nome: 'Teclado Gamer Dazz',
      descricao: 'Teclado Mecânico Gamer Dazz Orion Essential, RGB, Switch YH Blue, ABNT2, Preto',
      preco: '130.00',
      avaliacao: '5.0',
      imagePath: 'assets/images/teclados/teclado-dazz.jpg',
    ),
    ParametrosCategorias(
      nome: 'Teclado Mecânico Gamer AOC',
      descricao: 'Teclado Mecânico Gamer AOC GK450, LED Rainbow, switch Red, N-Key Rollover',
      preco: '130.00',
      avaliacao: '5.0',
      imagePath: 'assets/images/teclados/teclado-aoc.jfif',
    ),
    ParametrosCategorias(
      nome: 'Teclado Mecanico Gamer T-Dagger',
      descricao: 'Teclado Mecanico Gamer T-Dagger Bora RGB, Switch Outemu Red, Anti-Ghosting, ABNT2, Preto',
      preco: '160.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/teclados/teclado-tdagger.jfif',
    ),
  ];

  List <ParametrosCategorias> getListaTeclado() {
    return listaTeclados;
  }

}