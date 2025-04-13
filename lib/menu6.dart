import 'package:flutter/material.dart';
import 'widgets/base_page.dart';

class Menu6Page extends StatelessWidget {
  const Menu6Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 5, // Indica que Menu2 está seleccionado.
      body: const Center(
        child: Text(
          'Contenido de los mensajes',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
