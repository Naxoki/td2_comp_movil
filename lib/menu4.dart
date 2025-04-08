import 'package:flutter/material.dart';
import 'base_page.dart';

class Menu4Page extends StatelessWidget {
  const Menu4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 3, // Indica que Menu2 está seleccionado.
      body: const Center(
        child: Text(
          'Contenido del Menu 4',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
