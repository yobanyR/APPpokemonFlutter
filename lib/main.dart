import 'package:componentes/screens/map_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      final Map<String, String> pokemonData = {
        'Pikachu': 'Pikachu es un Pokémon de tipo eléctrico.',
        'Bulbasaur': 'Bulbasaur es un Pokémon de tipo planta.',
      };

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pokemons',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MapScreen(pokemonData: pokemonData),
    );
  }
}