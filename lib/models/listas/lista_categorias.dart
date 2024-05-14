import 'package:segunda_prova/models/parametros/parametros_container_redondo.dart';

class ListaCategorias{
  List<ParametrosContainerRedondo> listaCategorias = [
    ParametrosContainerRedondo(
      imagePath: 'assets/images/categorias/processadores.png',
      nome: 'AMD e Intel',
    ),
    ParametrosContainerRedondo(
      imagePath: 'assets/images/categorias/gabinete-rise-mode.png',
      nome: 'Gabinetes',
    ),
    ParametrosContainerRedondo(
      imagePath: 'assets/images/categorias/headset.png',
      nome: 'Headsets',
    ),
    ParametrosContainerRedondo(
      imagePath: 'assets/images/categorias/monitor.png',
      nome: 'Monitores',
    ),
    ParametrosContainerRedondo(
      imagePath: 'assets/images/categorias/mouse.png',
      nome: 'Mouses',
    ),
    ParametrosContainerRedondo(
      imagePath: 'assets/images/categorias/placa-de-video.png',
      nome: 'Placas VGA',
    ),
    ParametrosContainerRedondo(
      imagePath: 'assets/images/categorias/teclado.png',
      nome: 'Teclados',
    ),
  ];

  List<ParametrosContainerRedondo> getListaCategorias() {
    return listaCategorias;
  }
}