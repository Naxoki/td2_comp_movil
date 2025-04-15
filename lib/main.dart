import 'package:flutter/material.dart';
import 'menu1.dart';
import 'menu2.dart';
import 'menu3.dart';
import 'menu4.dart';
import 'menu5.dart';
import 'menu6.dart';
import 'menu7.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'trabajo desarrollo 2 movil',
      initialRoute: '/menu1',
      // Definimos el tema global de la aplicación
      theme: ThemeData(
        brightness: Brightness.dark, // Esto ya aplica un estilo oscuro
        scaffoldBackgroundColor: Colors.black, // Fondo negro para el Scaffold
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black, // Fondo negro para el AppBar
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
       // Actualiza los nombres de las propiedades del TextTheme
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white), // Remplaza bodyText1
          bodyMedium: TextStyle(color: Colors.white), // Remplaza bodyText2
          titleLarge: TextStyle(color: Colors.white),  // Remplaza headline6
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black, // Fondo negro para el BottomNavigationBar
          selectedItemColor: Colors.white, // Elemento seleccionado en blanco
          unselectedItemColor: Colors.white70, // Elemento no seleccionado en gris claro
        ),
      ),
      routes: {
        '/menu1': (context) => const Menu1Page(),
        '/menu2': (context) => const Menu2Page(),
        '/menu3': (context) => const Menu3Page(),
        '/menu4': (context) => const Menu4Page(),
        '/menu5': (context) => const Menu5Page(),
        '/menu6': (context) => const Menu6Page(),
        '/menu7': (context) => const Menu7Page(),

      },
    );
  }
}
