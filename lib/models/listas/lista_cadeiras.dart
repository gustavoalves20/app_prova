import 'package:segunda_prova/models/parametros/parametros_produtos.dart';

class ListaCadeiras {
  List<ParametrosProdutos> listaCadeiras = [
    ParametrosProdutos(
      nome: 'Cadeira Gamer Alpha',
      descricao: 'Cadeira Gamer Alpha Gamer Nebula XL Fabric, até 150 kg, apoio de braço 4D, reclinável, cinza.',
      preco: '1.344.00',
      avaliacao: 4.5,
      vendidos: 350,
      imagePath: 'assets/images/cadeiras/cadeira-alpha.png',
    ),
    ParametrosProdutos(
      nome: 'Cadeira Gamer Corsair',
      descricao: 'Cadeira Gamer Corsair T3 Rush 2023, até 120Kg, com almofadas, reclinável, apoio de braços 4D, cinza e preto.',
      preco: '1.452.00',
      avaliacao: 5,
      vendidos: 470,
      imagePath: 'assets/images/cadeiras/cadeira-corsair.png',
    ),
    ParametrosProdutos(
      nome: 'Cadeira Gamer Kabum',
      descricao: 'Cadeira Gamer KBM! GAMING Tempest CG500, preta e branco, com almofadas, descanso para pernas retrátil, reclinável.',
      preco: '950.00',
      avaliacao: 4.5,
      vendidos: 400,
      imagePath: 'assets/images/cadeiras/cadeira-kabum.png',
    ),
    ParametrosProdutos(
      nome: 'Cadeira Gamer Prizi',
      descricao: 'Cadeira Gamer Prizi JX-1039PU, até 120Kg, ajustável, com almofadas, roxa.',
      preco: '440.00',
      avaliacao: 2,
      vendidos: 150,
      imagePath: 'assets/images/cadeiras/cadeira-prizi.png',
    ),
    ParametrosProdutos(
      nome: 'Cadeira Gamer Rise',
      descricao: 'Cadeira Gamer Rise Mode Z5, ângulo ajustável, braço 4D, preto.',
      preco: '1.100.00',
      avaliacao: 5,
      vendidos: 370,
      imagePath: 'assets/images/cadeiras/cadeira-rise-mode.png',
    ),
    ParametrosProdutos(
      nome: 'Cadeira Gamer XT Racer',
      descricao: 'Cadeira Gamer XT Racer Platinum W Series, até 120kg, com almofadas, reclinável, descanso de braço 3D, preto.',
      preco: '1.099.00',
      avaliacao: 4.5,
      vendidos: 600,
      imagePath: 'assets/images/cadeiras/cadeira-xt-racer.png',
    ),
  ];

  List<ParametrosProdutos> getProducts() {
    return listaCadeiras;
  }
}
