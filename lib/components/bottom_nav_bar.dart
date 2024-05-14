import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:segunda_prova/shared/tema.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabeChange;
  BottomNavBar({super.key, required this.onTabeChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2, top: 2),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabeChange!(value),
        activeColor: Tema().corAzul,
        tabActiveBorder: Border.all(color: Tema().corAzul),
        padding: const EdgeInsets.all(15),
        gap: 5,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Favoritos',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Carrinho',
          ),
          GButton(
            icon: Icons.account_circle,
            text: 'Conta',
          ),
        ],
      ),
    );
  }
}
