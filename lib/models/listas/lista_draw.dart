import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:segunda_prova/models/parametros/parametros_draw.dart';

class ListaDraw {
  List<ParametrosDraw> listaDraw = [
    ParametrosDraw(
      icon: FontAwesomeIcons.desktop,
      nome: 'Monte seu PC',
    ),
    ParametrosDraw(
      icon: FontAwesomeIcons.tag,
      nome: 'Oferta do dia',
    ),
    ParametrosDraw(
      icon: FontAwesomeIcons.dollarSign,
      nome: 'Cupons',
    ),
    ParametrosDraw(
      icon: FontAwesomeIcons.boltLightning,
      nome: 'Entrega Flash',
    ),
    ParametrosDraw(
      icon: FontAwesomeIcons.boxOpen,
      nome: 'OpenBox',
    ),
    ParametrosDraw(
      icon: FontAwesomeIcons.crosshairs,
      nome: 'Mais Procurados',
    ),
    ParametrosDraw(
      icon: FontAwesomeIcons.truck,
      nome: 'Acabaram de chegar',
    ),
  ];

  List<ParametrosDraw> getListaDraw() {
    return listaDraw;
  }
}