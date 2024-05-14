import '../../../../models/parametros/parametros_categorias.dart';

class ListaMonitores {
  List<ParametrosCategorias> listaMonitores = [
    ParametrosCategorias(
      nome: 'Monitor Gamer LG',
      descricao: 'Monitor Gamer LG UltraGear 27" QHD OLED, 240Hz, 0.03ms, HDMI ',
      preco: '5.760.00',
      avaliacao: '5.0',
      imagePath: 'assets/images/monitores/monitor-lg.jpg',
    ),
    ParametrosCategorias(
      nome: 'Monitor Gamer AOC',
      descricao: 'Monitor Gamer AOC 23,8" Full HD, 165Hz 1ms, VA, DisplayPort, HDMI',
      preco: '890.00',
      avaliacao: '5.0',
      imagePath: 'assets/images/monitores/monitor-aoc.jpg',
    ),
    ParametrosCategorias(
      nome: 'Monitor Gamer Samsung',
      descricao: 'Monitor Gamer Samsung 24" IPS, 75 Hz, Full HD, FreeSync, HDMI',
      preco: '700.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/monitores/monitor-samsung.jpg',
    ),
    ParametrosCategorias(
      nome: 'Monitor Concórdia Gamer',
      descricao: 'Monitor Concórdia Gamer 23.8' ' Led Full Hd, 165hz, Freesync, HDMI',
      preco: '1.340.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/monitores/monitor-concordla.jpg',
    ),
    ParametrosCategorias(
      nome: 'Monitor Gamer Acer',
      descricao: 'Monitor Gamer Acer QG240Y Nitro 23.8 Full HD, 180Hz, 1ms, HDMI',
      preco: '820.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/monitores/monitor-acer.jpg',
    ),
    ParametrosCategorias(
      nome: 'Monitor Gamer KBM!',
      descricao: 'Monitor Gamer KBM! GAMING MG100 24" Led Full Hd, 100hz, Hdmi',
      preco: '520.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/monitores/monitor-kabum.jpg',
    ),
  ];

  List<ParametrosCategorias> getListaMonitor() {
    return listaMonitores;
  }
}
