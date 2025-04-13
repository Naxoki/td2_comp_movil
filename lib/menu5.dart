import 'package:flutter/material.dart';
import 'widgets/base_page.dart';

class Menu5Page extends StatelessWidget {
  const Menu5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 4, // Indica que Menu2 está seleccionado.
      body: const Center(
        child: Text(
          'Contenido de las notificaciones',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
