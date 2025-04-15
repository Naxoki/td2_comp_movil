import 'package:flutter/material.dart';
import '/widgets/base_page.dart';
import '/widgets/custom_app_bar.dart';
import 'package:td2_comp_movil/widgets/news_card.dart';
import 'package:td2_comp_movil/widgets/custom_button_bar.dart';

class Menu7Page extends StatefulWidget {
  const Menu7Page({Key? key}) : super(key: key);

  @override
  _Menu7PageState createState() => _Menu7PageState();
}

class _Menu7PageState extends State<Menu7Page> {
  // En Menu7, se asume que el botón "Siguiendo" (índice 1) es el seleccionado.
  int _selectedButton = 1;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 0, // Ajusta según corresponda para el menú inferior.
      appBar: customAppBar(),
      body: ListView(
        children: [
          // Barra de botones personalizada importada desde CustomButtonBar.
          CustomButtonBar(
            selectedButton: _selectedButton,
            onButtonSelected: (int index) {
              // Si se presiona "Para ti" (índice 0), navegamos a Menu1 (ruta '/menu1')
              if (index == 0) {
                Navigator.pushNamed(context, '/menu1');
              } else {
                // Si se presiona "Siguiendo" (índice 1), se mantiene la pantalla actual.
                setState(() {
                  _selectedButton = index;
                });
              }
            },
          ),
          const SizedBox(height: 8.0),
          // Ejemplo de NewsCard para mostrar contenido en Menu7.
          NewsCard(
            user: '@naxoki - 1h',
            leftIcon: Icons.account_circle,
            title: 'Naxoki',
            rightIcon: Icons.more_horiz,
            description:
                'Eres Geralt de Rivia, cazador de monstruos. En un continente devastado por la guerra e infestado de criaturas, tu misión es encontrar a Ciri, la niña de la profecía, un arma viviente que puede alterar el mundo tal y como lo conocemos.',
            imageUrl:
                'https://wallpapercat.com/w/full/f/3/f/5549-3840x2160-desktop-4k-the-witcher-game-wallpaper-photo.jpg',
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          NewsCard(
            user: '@naxoki - 2h',
            leftIcon: Icons.account_circle,
            title: 'Naxoki',
            rightIcon: Icons.more_horiz,
            description:
                'La última línea ofensiva de la galaxia. Enlístate en los Helldivers y únete a la lucha por la libertad en una galaxia hostil en este juego de disparos en tercera persona frenético y feroz., un arma viviente que puede alterar el mundo tal y como lo conocemos.',
            imageUrl:
                'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/553850/05e5017c5ef814f2f10d790006be2abc3387b959/capsule_616x353.jpg?t=1741137570',
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      ),
    );
  }
}
