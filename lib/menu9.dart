import 'package:flutter/material.dart';
import '/widgets/base_page.dart';
import '/widgets/com_app_bar.dart';
import 'package:td2_comp_movil/widgets/com_news_card.dart';
import 'package:td2_comp_movil/widgets/com_boton_bar.dart';

class Menu9Page extends StatefulWidget {
  const Menu9Page({Key? key}) : super(key: key);

  @override
  _Menu9PageState createState() => _Menu9PageState();
}

class _Menu9PageState extends State<Menu9Page> {
  // En Menu9, se asume que el botón "Siguiendo" (índice 1) es el seleccionado.
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
                Navigator.pushNamed(context, '/menu8');
              } else {
                // Si se presiona "Siguiendo" (índice 1), se mantiene la pantalla actual.
                setState(() {
                  _selectedButton = index;
                });
              }
            },
          ),
          const SizedBox(height: 8.0),
          // Ejemplo de NewsCard para mostrar contenido en Menu9.
           NewsCard1(
            comunidad: 'los watapique',
            user: '@tonwito - 1d',
            leftIcon: Icons.account_circle,
            title: 'comer es bello',
            rightIcon: Icons.more_horiz,
            description:
                'Rica comida, rica vida.',
            imageUrl:
                'https://img.hellofresh.com/w_3840,q_auto,f_auto,c_fill,fl_lossy/hellofresh_website/es/cms/SEO/recipes/albondigas-caseras-de-cerdo-con-salsa-barbacoa.jpeg',
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          
        ],
      ),
    );
  }
}