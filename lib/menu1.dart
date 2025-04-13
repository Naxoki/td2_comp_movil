import 'package:flutter/material.dart';
import '/widgets/base_page.dart';
import '/widgets/custom_app_bar.dart';
import 'package:td2_comp_movil/widgets/news_card.dart';

class Menu1Page extends StatelessWidget {
  const Menu1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 0, // Indica que Menu1 está seleccionado.
      appBar: customAppBar('Menú 1'),
      body: ListView(
        children: [
          // Nueva barra justo debajo del AppBar con 2 botones que ocupen todo el ancho
          Container(
            color: const Color.fromARGB(
              255,
              0,
              0,
              0,
            ), // Color de fondo para la barra (puedes personalizarlo)
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Row(
              children: [
                // Primer botón expandido
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción del Botón 1
                      print('Botón 1 presionado');
                    },
                    child: const Text('Para ti'),
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
                    child: const Text('Siguiendo'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          // Noticias (puedes agregar más NewsCard según necesites)
          NewsCard(
            leftIcon: Icons.account_circle,
            title: 'Letme_solo',
            rightIcon: Icons.more_horiz,
            description:
                'EL NUEVO RPG DE ACCIÓN DE FANTASÍA. Levántate, tiznado, y déjate guiar por la gracia para esgrimir el poder del Anillo de Elden y convertirte en un Señor de Elden en las Tierras Intermedias.',
            imageUrl:
                'https://wallpapers.com/images/hd/elden-ring-1080p-gaming-2hz135lvlbwj5oke.jpg',
            backgroundColor: const Color.fromARGB(
              255,
              0,
              0,
              0,
            ), // Aquí defines el color de fondo deseado.
          ),
          NewsCard(
            leftIcon: Icons.account_circle,
            title: 'Letme_solo',
            rightIcon: Icons.more_horiz,
            description: 'Descripción de otra noticia.',
            imageUrl:
                'https://cloudfront-eu-central-1.images.arcpublishing.com/diarioas/77AFXG3AGJAAFF5XIGDPTK2YAM.jpg',
            backgroundColor: const Color.fromARGB(
              255,
              0,
              0,
              0,
            ), // Aquí defines el color de fondo deseado.
          ),
        ],
      ),
    );
  }
}
