import 'dart:math';

import 'package:flutter/material.dart';
import 'package:poquedex/models/pokemon.dart';

class telajogo extends StatefulWidget {
  final List<Pokemon> pokemonlist;

  const telajogo({required this.pokemonlist, super.key});
  @override
  State<telajogo> createState() => _telajogo();
}

class _telajogo extends State<telajogo> {
  int acertos = 0;
  int erros = 0;
  int tentativas = 0;

  @override
  Widget build(BuildContext context) {
    int pokemonCerto = Random().nextInt(149);

    dynamic imagem = widget.pokemonlist[pokemonCerto].image;

    final List<String> botoes = [
      widget.pokemonlist[Random().nextInt(149)].name,
      widget.pokemonlist[Random().nextInt(149)].name,
      widget.pokemonlist[Random().nextInt(149)].name,
      widget.pokemonlist[pokemonCerto].name,
    ];

    botoes.shuffle();

    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(imagem),
            ))
          ],
        ),
        Row(
          children: [Text("Acertos: $acertos")],
        ),
        Row(
          children: [Text("Erros: $erros")],
        ),
        Column(
          children: botoes.map((nome) {
            return ElevatedButton(
                onPressed: () {
                  tentativas++;

                  if (nome == widget.pokemonlist[pokemonCerto].name) {
                    acertos++;
                  } else {
                    erros++;
                  }

                  if (tentativas == 10) {
                    print("Quantidade de acertos: $acertos");

                    acertos = 0;
                    erros = 0;
                    tentativas = 0;
                  }

                  setState(() {});
                },
                child: Text(
                  nome,
                  // textAlign: TextAlign.center,
                  // style: const TextStyle(
                  //   fontSize: 25.0,
                  //   color: Colors.white,
                  // ),
                ));
          }).toList(),
        )
      ],
    );
  }
}
