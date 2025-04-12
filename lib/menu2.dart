import 'package:flutter/material.dart';
import 'base_page.dart';

class Menu2Page extends StatelessWidget {
  const Menu2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 1, // Indica que Menu2 está seleccionado.
      body: const Center(
        child: Text(
          'Contenido del Searchhh',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
