import 'package:flutter/material.dart';
import 'package:poquedex/models/pokemon.dart';

class telajogo extends StatefulWidget {
  final List<Pokemon> pokemonlist;

  const telajogo({required this.pokemonlist, super.key});
  @override
  State<telajogo> createState() => _telajogo();
}

class _telajogo extends State<telajogo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(widget.pokemonlist[0].image),
            ))
          ],
        )
      ],
    );
  }
}
