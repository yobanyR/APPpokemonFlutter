import 'package:flutter/material.dart';
import 'package:componentes/screens/pokemon_info_screen.dart';

class MapScreen extends StatelessWidget {
  final Map<String, String> pokemonData;

  const MapScreen({required this.pokemonData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text("Opción 1"),
                ),
                const PopupMenuItem(
                  child: Text("Opción 2"),
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: pokemonData.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          String pokemonName = pokemonData.keys.elementAt(index);
          String pokemonDescription = pokemonData[pokemonName]!;

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/$pokemonName.png'), 
            ),
            title: Text(pokemonName),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PokemonInfoScreen(
                    pokemonName: pokemonName,
                    pokemonDescription: pokemonDescription,
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Créditos"),
                content: Text("Desarrollado por Yobani"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cerrar"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.info),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
