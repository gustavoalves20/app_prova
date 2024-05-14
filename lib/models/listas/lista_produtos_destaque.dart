import 'package:segunda_prova/models/parametros/parametros_produtos_destaque.dart';

class ListaProdutosDestaque {
  List<ParametrosProdutosDestaque> listaProdutosDestaque = [
  ParametrosProdutosDestaque(
    nome: 'Caixa de Som JBL',
    descricao: 'Caixa de Som Portátil JBL Flip 6, Bluetooth, À prova DÁgua, USB-C, Preto',
    vendidos: 370,
    preco: '720.00',
    avaliacao: '4.5',
    imagePath: 'assets/images/produtos_destaque/caixa-de-som-jbl.png',
  ),
  ParametrosProdutosDestaque(
    nome: 'Memória Ram XPG',
    descricao: 'Memória XPG Gammix D35, 8GB, 3200MHz, DDR4, CL16, Preto',
    vendidos: 370,
    preco: '180.00',
    avaliacao: '4.5',
    imagePath: 'assets/images/produtos_destaque/memoria-ram.png',
  ),
  ParametrosProdutosDestaque(
    nome: 'Notebook Samsung',
    descricao: 'Notebook Samsung Galaxy Book2 Intel Core i5-1235U, 8GB RAM, SSD 256GB, 15.6" Full HD, Windows 11 Home, Grafite',
    vendidos: 370,
    preco: '3.220.00',
    avaliacao: '4.5',
    imagePath: 'assets/images/produtos_destaque/notebook-samsung.png',
  ),
  ParametrosProdutosDestaque(
    nome: 'Placa Mãe Gigabyte',
    descricao: 'Placa Mãe Gigabyte B550M Aorus Elite, AMD AM4, Micro ATX, DDR4',
    vendidos: 370,
    preco: '980.00',
    avaliacao: '4.5',
    imagePath: 'assets/images/produtos_destaque/placa-mae.png',
  ),
  ParametrosProdutosDestaque(
    nome: 'SSD NVMe Kingston',
    descricao: 'SSD 1 TB Kingston NV2, M.2 2280 PCIe, NVMe, Leitura: 3500 MB/s e Gravação: 2100 MB/s - SNV2S/1000G',
    vendidos: 370,
    preco: '560.00',
    avaliacao: '4.5',
    imagePath: 'assets/images/produtos_destaque/ssd.png',
  ),
  ParametrosProdutosDestaque(
    nome: 'Water Cooler Rise',
    descricao: 'Water Cooler Rise Mode, ARGB, 240mm, AMD/Intel, Preto',
    vendidos: 370,
    preco: '350.00',
    avaliacao: '4.5',
    imagePath: 'assets/images/produtos_destaque/water-cooler.png',
  ),
  ];

  List<ParametrosProdutosDestaque> getCategoriaContainers() {
    return listaProdutosDestaque;
  }
}