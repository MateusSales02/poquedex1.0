import 'package:flutter/material.dart';
import 'package:poquedex/telas/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/': (context) => const HomeScreen(),
        // '/details': (context) => const DetailsScreen(),
      },
      initialRoute: '/',
    );
  }
}
