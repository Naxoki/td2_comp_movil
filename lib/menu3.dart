import 'package:flutter/material.dart';
import 'base_page.dart';

class Menu3Page extends StatelessWidget {
  const Menu3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 2, // Indica que Menu2 está seleccionado.
      body: const Center(
        child: Text(
          'Contenido del Menu 3',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
