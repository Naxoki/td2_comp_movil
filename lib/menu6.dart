import 'package:flutter/material.dart';
import 'base_page.dart';

class Menu6Page extends StatelessWidget {
  const Menu6Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 5, // Indica que Menu2 está seleccionado.
      body: const Center(
        child: Text(
          'Contenido del Menu 6',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
