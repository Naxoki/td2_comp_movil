import 'package:flutter/material.dart';
import 'package:td2_comp_movil/widgets/com_news_card.dart';
import '/widgets/base_page.dart';
import '/widgets/com_app_bar.dart';
import 'package:td2_comp_movil/widgets/com_boton_bar.dart';


class Menu8Page extends StatefulWidget {
  const Menu8Page({Key? key}) : super(key: key);

  @override
  _Menu8PageState createState() => _Menu8PageState();
}

class _Menu8PageState extends State<Menu8Page> {
  // Variable que controla el botón seleccionado (0 para "Para ti", 1 para "Siguiendo")
  int _selectedButton = 0;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 1, // Indica que Menu8 está seleccionado en el menú inferior.
      appBar: customAppBar(),
      body: ListView(
        children: [
          // Barra de botones personalizada importada de CustomButtonBar.
          CustomButtonBar(
            selectedButton: _selectedButton,
            onButtonSelected: (int index) {
              // Si se presiona "Siguiendo" (índice 1), navegamos a la ruta '/menu7'
              if (index == 1) {
                Navigator.pushNamed(context, '/menu9');
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
          NewsCard1(
            comunidad: 'los locos',
            user: '@naxoki - 1d',
            leftIcon: Icons.account_circle,
            title: 'Letme_solo',
            rightIcon: Icons.more_horiz,
            description:
                'EL NUEVO RPG DE ACCIÓN DE FANTASÍA. Levántate, tiznado, y déjate guiar por la gracia para esgrimir el poder del Anillo de Elden...',
            imageUrl:
                '',
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          
          
        ],
      ),
    );
  }
}
