import '../../../../models/parametros/parametros_categorias.dart';

class ListaGabinete {
  List<ParametrosCategorias> listaGabinete = [
    ParametrosCategorias(
      nome: 'Gabinete Gamer Rise Mode Glass 06X',
      descricao: 'Gabinete Gamer Rise Mode Glass 06X, Mid Tower, Lateral em Vidro Fumê e Frontal em Vidro Temperado, Preto',
      avaliacao: '4',
      preco: '220.00',
      imagePath: 'assets/images/gabinetes/gabinete-rise-mode.png',
    ),
    ParametrosCategorias(
      nome: 'Gabinete Gamer Corsair 4000D Airflow',
      descricao: 'Gabinete Gamer Corsair 4000D Airflow, Mid-Tower, ATX, Lateral em Vidro Temperado, Com FAN, Preto',
      avaliacao: '4.5',
      preco: '699.90',
      imagePath: 'assets/images/gabinetes/gabinete-corsair.png',
    ),
    ParametrosCategorias(
      nome: 'Gabinete Galax Alpha Black',
      descricao: 'Gabinete Galax Alpha Black, Mid Tower, ATX, Frontal de Vidro, Preto - GLX-ALPHA--2069',
      avaliacao: '5',
      preco: '470.00',
      imagePath: 'assets/images/gabinetes/gabinete-galax.png',
    ),
    ParametrosCategorias(
      nome: 'Gabinete Gamer Gamemax Precision',
      descricao: 'Gabinete Gamer Gamemax Precision, Mid Tower, ATX, Lateral em Vidro Temperado, 4x Cooler Fan, Preto',
      avaliacao: '3',
      preco: '400.00',
      imagePath: 'assets/images/gabinetes/gabinete-gamemax.png',
    ),
    ParametrosCategorias(
      nome: 'Gabinete Gamer Hyrax HGB720',
      descricao: 'Gabinete Gamer Hyrax HGB720, Mid Tower, ATX, Frente e Lateral Em Vidro Temperado, Preto',
      avaliacao: '5',
      preco: '500.00',
      imagePath: 'assets/images/gabinetes/gabinete-hyrax.png',
    ),
    ParametrosCategorias(
      nome: 'Gabinete Gamer T-Dagger,',
      descricao: 'Gabinete Gamer T-Dagger, Lateral em Acrilico, Mid Tower Preto, 4x Cooler Fan, TGC-G10B',
      avaliacao: '4.5',
      preco: '210.00',
      imagePath: 'assets/images/gabinetes/gabinete-tdagger.png',
    ),
  ];

  List<ParametrosCategorias> getListaGbinete(){
    return listaGabinete;
  }
}