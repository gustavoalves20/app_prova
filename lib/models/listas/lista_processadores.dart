import '../../../../models/parametros/parametros_categorias.dart';

class ListaProcessadores {
  List<ParametrosCategorias> listaProcessadores = [
    ParametrosCategorias(
      nome: 'Processador Intel Core i3-10105',
      descricao: 'Intel Core i3-10105, 3.7GHz(4.4GHz Max Turbo), Cache 6MB, Quad Core, 8 Threads, LGA 1200',
      preco: '670.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/processadores/intel-core-3.png',
    ),
    ParametrosCategorias(
      nome: 'Processador Intel Core i5-10400F',
      descricao: 'Intel Core i5-10400F, 2.9GHz (4.3GHz Max Turbo), Cache 12MB, 6 Núcleos, 12 Threads, LGA 1200',
      preco: '1.100.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/processadores/intel-core-5.png',
    ),
    ParametrosCategorias(
      nome: 'Processador Intel Core i7-12700K',
      descricao: 'Intel Core i7-12700K, 3.6GHz (5.0GHz Max Turbo), 12 Núcleos, 20 Threads, LGA 1700',
      preco: '2.890.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/processadores/intel-core-7.png',
    ),
    ParametrosCategorias(
      nome: 'Processador Intel Core i9-12900KF',
      descricao: 'Intel Core i9-12900KF, 3.2GHz (5.2GHz Max Turbo), Cache 30MB, 16 Núcleos, 24 Threads, LGA 1700',
      preco: '3.720.00',
      avaliacao: '4.5',
      imagePath: 'assets/images/processadores/intel-core-9.png',
    ),
    ParametrosCategorias(
      nome: 'Processador AMD Ryzen 3 3200G',
      descricao: 'Processador AMD Ryzen 3 3200G, 3.6GHz (4GHz Max Turbo), Cache 4MB, Quad Core, 4 Threads, AM4',
      preco: '3.5',
      avaliacao: '620.00',
      imagePath: 'assets/images/processadores/ryzen3.jpg',
    ),
    ParametrosCategorias(
      nome: 'Processador AMD Ryzen 5 5600X',
      descricao: 'Processador AMD Ryzen 5 5600X, 3.7GHz (4.6GHz Max Turbo), Cache 35MB, 6 Núcleos, 12 Threads, AM4 ',
      preco: '1.200.00',
      avaliacao: '40',
      imagePath: 'assets/images/processadores/ryzen5.jpg',
    ),
    ParametrosCategorias(
      nome: 'Processador AMD Ryzen 7 5700X3D',
      descricao: 'Processador AMD Ryzen 7 5700X3D, 3.6 GHz, (4.1GHz Max Turbo), Cachê 4MB, 8 Núcleos, 16 Threads, AM4',
      preco: '2.100',
      avaliacao: '4.5',
      imagePath: 'assets/images/processadores/ryzen7.jpg',
    ),
    ParametrosCategorias(
      nome: 'Processador AMD Ryzen 9 5900X',
      descricao: 'Processador AMD Ryzen 9 5900X, 3.7GHz (4.8GHz Max Turbo), Cache 70MB, 12 Núcleos, 24 Threads, AM4',
      preco: '2.250.00',
      avaliacao: '5',
      imagePath: 'assets/images/processadores/ryzen9.jpg',
    ),
  ];

  List<ParametrosCategorias> getListaCategorias(){
    return listaProcessadores;
  }
}