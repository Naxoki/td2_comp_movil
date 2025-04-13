import 'package:flutter/material.dart';
import '/widgets/base_page.dart';

class Menu1Page extends StatelessWidget {
  const Menu1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 0, // Indica que Menu1 está seleccionado.
      body: const Center(
        child: Text(
          'Contenido del Menu 1',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
