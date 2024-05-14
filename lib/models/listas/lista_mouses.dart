import '../../../../models/parametros/parametros_categorias.dart';

class ListaMouses {
  List<ParametrosCategorias> listaMouses = [
    ParametrosCategorias(
      nome: 'Mouse Gamer HyperX',
      descricao: 'Mouse Gamer HyperX Pulsefire Core RGB 6200 DPI - 4P4F8AA',
      preco: '260.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/mouses/mouse-hyperx.jpg',
    ),
    ParametrosCategorias(
      nome: 'Mouse Gamer Redragon',
      descricao: 'Mouse Gamer Redragon Cobra, Chroma RGB, 10000DPI, 7 Botões, Preto',
      preco: '180.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/mouses/mouse-redragon.jpg',
    ),
    ParametrosCategorias(
      nome: 'Mouse Gamer T-Dagger',
      descricao: 'Mouse Gamer T-Dagger Camaro, RGB, 8000DPI, 8 Botões Programáveis, Preto',
      preco: '120.00',
      avaliacao: '5',
      imagePath: 'assets/images/mouses/mouse-tdagger.jpg',
    ),
    ParametrosCategorias(
      nome: 'Mouse Gamer HyperX',
      descricao: 'Mouse Gamer HyperX Pulsefire Core RGB 6200 DPI - 4P4F8AA',
      preco: '260.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/mouses/mouse-hyperx.jpg',
    ),
    ParametrosCategorias(
      nome: 'Mouse Gamer Logitech',
      descricao: 'Mouse Gamer Logitech G203 LIGHTSYNC RGB, Efeito de Ondas de Cores, 6 Botões',
      preco: '200.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/mouses/mouse-logitech.jpg',
    ),
    ParametrosCategorias(
      nome: 'Mouse Gamer AOC',
      descricao: 'Mouse Gamer AOC GM310, RGB, 12400 DPI, 7 Botões, Preto ',
      preco: '100.00',
      avaliacao: '4',
      imagePath: 'assets/images/mouses/mouse-aoc.jpg',
    ),
  ];

  List<ParametrosCategorias> getListaMouses() {
    return listaMouses;
  }
}