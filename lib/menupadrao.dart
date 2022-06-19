import 'package:flutter/material.dart';

class MenuPadrao extends StatelessWidget {
  MenuPadrao({required this.cor, required this.filhoMenu});

  final Color cor;
  final Widget filhoMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: filhoMenu,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}