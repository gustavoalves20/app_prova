import '../../../../models/parametros/parametros_categorias.dart';

class ListaHeadSets {
  List<ParametrosCategorias> listaHeadSets = [
    ParametrosCategorias(
      nome: 'Headset Gamer Havit H2002D',
      descricao: 'Headset Gamer Havit, Drivers 53mm, Microfone Plugável, P2, PC, PS4, XBOX ONE, Preto - HV-H2002D',
      preco: '160.00',
      avaliacao: '4.0',
      imagePath: 'assets/images/headsets/headset-havit.jpg',
    ),
    ParametrosCategorias(
      nome: 'Headset Gamer Redragon',
      descricao: 'Headset Gamer Redragon Zeus X, Chroma Mk.II, RGB, Surround 7.1, USB, Drivers 53MM',
      preco: '230.00',
      avaliacao: '3.5',
      imagePath: 'assets/images/headsets/headset-redragon.jpg',
    ),
    ParametrosCategorias(
      nome: 'Headset Gamer Razer',
      descricao: 'Headset Gamer Razer BlackShark V2 X, Drivers 50mm',
      preco: '200.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/headsets/headset-razer.jpg',
    ),
    ParametrosCategorias(
      nome: 'Headset Gamer HyperX',
      descricao: 'Headset Gamer HyperX Cloud Stinger 2, Drivers 50mm, P3',
      preco: '170.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/headsets/headset-hyperx.jpg',
    ),
    ParametrosCategorias(
      nome: 'Headset Gamer JBL',
      descricao: 'Headset Gamer JBL Quantum 100, Drivers 40mm, Preto',
      preco: '200.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/headsets/headset-jbl.jpg',
    ),
    ParametrosCategorias(
      nome: 'Headset Gamer Fortrek',
      descricao: 'Headset Gamer Fortrek PRO H2 com LED Azul, P2, Preto',
      preco: '69.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/headsets/headset-fortrek.jpg',
    ),
  ];

  List<ParametrosCategorias> getListaHeadset() {
    return listaHeadSets;
  }
}
