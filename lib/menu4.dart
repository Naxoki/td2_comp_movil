import 'package:flutter/material.dart';
import 'widgets/base_page.dart';

class Menu4Page extends StatelessWidget {
  const Menu4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 3, // Indica que Menu2 está seleccionado.
      body: const Center(
        child: Text(
          'Contenido de la comunidad',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
