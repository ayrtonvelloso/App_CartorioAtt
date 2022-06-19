import 'package:flutter/material.dart';

const descricaoTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);


class ConteudoIcone extends StatelessWidget {
  const ConteudoIcone({required this.icone, required this.descricao});

  final IconData icone;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          size: 80,
          color: Colors.white,
        ),
        Text(
          descricao,
        style: descricaoTextStyle,
        ),
      ],
    );
  }
}