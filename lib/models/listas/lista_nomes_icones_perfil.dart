import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:segunda_prova/models/parametros/parametros_nome_icon_perfil.dart';

class ListaNomeIconesPerfil{
  List<ParametrosNomeIconPerfil> listaNomeIconesPerfil = [
    ParametrosNomeIconPerfil(
      nome: 'Meus dados',
      icon: FontAwesomeIcons.solidUser,
    ),
    ParametrosNomeIconPerfil(
      nome: 'Meus pedidos',
      icon: FontAwesomeIcons.receipt,
    ),
    ParametrosNomeIconPerfil(
      nome: 'Avaliações',
      icon: FontAwesomeIcons.solidThumbsUp,
    ),
    ParametrosNomeIconPerfil(
      nome: 'Mensagens',
      icon: FontAwesomeIcons.solidEnvelope,
    ),
    ParametrosNomeIconPerfil(
      nome: 'Protocolos e atendimento',
      icon: FontAwesomeIcons.phone,
    ),
    ParametrosNomeIconPerfil(
      nome: 'Favoritos',
      icon: FontAwesomeIcons.solidHeart,
    ),
    ParametrosNomeIconPerfil(
      nome: 'Excluir conta',
      icon: FontAwesomeIcons.trash,
    ),
  ];
  List<ParametrosNomeIconPerfil> getNamesPerfil(){
    return listaNomeIconesPerfil;
  }
}
