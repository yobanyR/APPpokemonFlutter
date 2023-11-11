import 'package:flutter/material.dart';
class PokemonInfoScreen extends StatelessWidget {
  final String pokemonName;
  final String pokemonDescription;

  const PokemonInfoScreen({
    required this.pokemonName,
    required this.pokemonDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de $pokemonName'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Opción 1"),
                ),
                PopupMenuItem(
                  child: Text("Opción 2"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white, // Establecer el color de fondo azul
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/$pokemonName.png',
                    height: 200,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Datos del Pokemon',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black), // Ajustar el color del texto
                  ),
                  SizedBox(height: 10),
                  const Padding(
                    padding:  EdgeInsets.all(16.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                      'nisi ut aliquip ex ea commodo consequat.',
                      style: TextStyle(fontSize: 18, color: Colors.black), // Ajustar el color del texto
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black, // Ajustar el color del ícono
              ),
            ),
          ],
        ),
      ),
    );
  }
}
