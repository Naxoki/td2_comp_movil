import 'package:flutter/material.dart';
import '/widgets/base_page.dart';
import '/widgets/custom_app_bar.dart';
import 'package:td2_comp_movil/widgets/news_card.dart';
import 'package:td2_comp_movil/widgets/custom_button_bar.dart';


class Menu1Page extends StatefulWidget {
  const Menu1Page({Key? key}) : super(key: key);

  @override
  _Menu1PageState createState() => _Menu1PageState();
}

class _Menu1PageState extends State<Menu1Page> {
  // Variable que controla el botón seleccionado (0 para "Para ti", 1 para "Siguiendo")
  int _selectedButton = 0;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 1, // Indica que Menu1 está seleccionado en el menú inferior.
      appBar: customAppBar(),
      body: ListView(
        children: [
          // Barra de botones personalizada importada de CustomButtonBar.
          CustomButtonBar(
            selectedButton: _selectedButton,
            onButtonSelected: (int index) {
              // Si se presiona "Siguiendo" (índice 1), navegamos a la ruta '/menu7'
              if (index == 1) {
                Navigator.pushNamed(context, '/menu7');
              } else {
                // Sino, actualizamos el estado para el botón "Para ti"
                setState(() {
                  _selectedButton = index;
                });
              }
            },
          ),
          const SizedBox(height: 8.0),
          // Ejemplos de NewsCard para mostrar contenido.
          NewsCard(
            leftIcon: Icons.account_circle,
            title: 'Letme_solo',
            rightIcon: Icons.more_horiz,
            description:
                'EL NUEVO RPG DE ACCIÓN DE FANTASÍA. Levántate, tiznado, y déjate guiar por la gracia para esgrimir el poder del Anillo de Elden...',
            imageUrl:
                'https://wallpapers.com/images/hd/elden-ring-1080p-gaming-2hz135lvlbwj5oke.jpg',
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          NewsCard(
            leftIcon: Icons.account_circle,
            title: 'Letme_solo',
            rightIcon: Icons.more_horiz,
            description:
                'Shadow of the Erdtree es una expansión de ELDEN RING, el Juego del año...',
            imageUrl:
                'https://cloudfront-eu-central-1.images.arcpublishing.com/diarioas/77AFXG3AGJAAFF5XIGDPTK2YAM.jpg',
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          NewsCard(
            leftIcon: Icons.account_circle,
            title: 'Letme_solo',
            rightIcon: Icons.more_horiz,
            description:
                'ELDEN RING NIGHTREIGN es una aventura independiente dentro del universo de ELDEN RING...',
            imageUrl:
                'https://static.bandainamcoent.eu/high/elden-ring/elden-ring-nightreign/00-page-product/ERN-header-mobile.jpg',
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      ),
    );
  }
}
