import 'package:flutter/material.dart';
// Importamos las pantallas de menú
import 'menu1.dart';
import 'menu2.dart';
import 'menu3.dart';
import 'menu4.dart';
import 'menu5.dart';
import 'menu6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Tuiiiiter',
      // Esta es la pantalla inicial
      initialRoute: '/menu1',
      routes: {
        '/menu1': (context) => const Menu1Page(),
        '/menu2': (context) => const Menu2Page(),
        '/menu3': (context) => const Menu3Page(),
        '/menu4': (context) => const Menu4Page(),
        '/menu5': (context) => const Menu5Page(),
        '/menu6': (context) => const Menu6Page(),
      },
    );
  }
}
