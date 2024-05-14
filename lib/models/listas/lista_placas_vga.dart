import '../../../../models/parametros/parametros_categorias.dart';

class ListaPlacasVga {
  List<ParametrosCategorias> listaPlacasVga = [
    ParametrosCategorias(
      nome: 'Placa de Vídeo RX 6600',
      descricao: 'Placa de Vídeo RX 6600 CLD 8G ASRock AMD Radeon, 8GB, GDDR6',
      preco: '2.200.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/placas_vga/placa-rx6600.jfif',
    ),
    ParametrosCategorias(
      nome: 'Placa de Vídeo RTX 4060',
      descricao: 'Placa de Vídeo RTX 4060 AERO OC Gigabyte NVIDIA GeForce, 8GB GDDR6, RGB',
      preco: '2.500.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/placas_vga/placa-rtx4060.jfif',
    ),
    ParametrosCategorias(
      nome: 'Placa de Vídeo RTX 4070',
      descricao: 'Placa de Vídeo RTX 4070 Windforce OC 12G Gigabyte NVIDIA GeForce, 12GB GDDR6X, 192bits, DLSS, Ray Tracing',
      preco: '4.000.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/placas_vga/placa-rtx4070.jpg',
    ),
    ParametrosCategorias(
      nome: 'Placa de Vídeo RTX 4090',
      descricao: 'Placa de Vídeo RTX 4090 Asus NVIDIA ROG Strix, 24 GB GDDR6X, ARGB, DLSS, Ray Tracing ',
      preco: '13.500.00',
      avaliacao: '5',
      imagePath: 'assets/images/placas_vga/placa-rtx4090.jpg',
    ),
    ParametrosCategorias(
      nome: 'Placa de Vídeo RX 6400',
      descricao: 'Placa de Vídeo Gigabyte RX 6400 EAGLE AMD, 4GB GDDR6 ',
      preco: '800.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/placas_vga/placa-rx6400.jfif',
    ),
    ParametrosCategorias(
      nome: 'Placa de vídeo RTX 4080',
      descricao: 'Placa de vídeo RTX 4080 Super SG Galax NVIDIA GeForce, 16GB GDDR6X, DLSS, Ray Tracing, G-Sync',
      preco: '7.200.00',
      avaliacao: '5',
      imagePath: 'assets/images/placas_vga/placa-rtx4080.jpg',
    ),
  ];

  List <ParametrosCategorias> getlistaPlacasVga() {
    return listaPlacasVga;
  }
}