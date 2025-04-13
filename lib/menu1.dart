import 'package:flutter/material.dart';
import 'base_page.dart';
import 'custom_app_bar.dart';
import 'news_card.dart';

class Menu1Page extends StatelessWidget {
  const Menu1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 0, // Indica que Menu1 está seleccionado.
      appBar: customAppBar(''),
      body: ListView(
        children: [
          // Nueva barra justo debajo del AppBar con 2 botones que ocupen todo el ancho
          Container(
            color: const Color.fromARGB(255, 0, 0, 0), // Color de fondo para la barra (puedes personalizarlo)
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              children: [
                // Primer botón expandido
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción del Botón 1
                      print('Botón 1 presionado');
                    },
                    child: const Text('para ti'),
                  ),
                ),
                const SizedBox(width: 8.0),
                // Segundo botón expandido
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción del Botón 2
                      print('Botón 2 presionado');
                    },
                    child: const Text('siguiendo'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          // Noticias (puedes agregar más NewsCard según necesites)
          NewsCard(
            leftIcon: Icons.account_circle,
            title: 'Elden Ring',
            rightIcon: Icons.more_horiz,
            description: 'juego pa weno oeeee',
            imageUrl: 'https://wallpapers.com/images/hd/elden-ring-1080p-gaming-2hz135lvlbwj5oke.jpg',
           backgroundColor: Color.fromARGB(255, 0, 0, 0), // Aquí defines el color de fondo deseado.
          ),
            NewsCard(
            leftIcon: Icons.account_circle,
            title: 'Otra Noticia',
            rightIcon: Icons.more_horiz,
            description: 'Descripción de otra noticia.',
            imageUrl: 'https://via.placeholder.com/400x200',
            backgroundColor: Color.fromARGB(255, 0, 0, 0), // Aquí defines el color de fondo deseado.
          ),
        ],
      ),
    );
  }
}

