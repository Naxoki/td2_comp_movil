import 'package:flutter/material.dart';
import '/widgets/base_page.dart';
import '/widgets/com_app_bar.dart';
import '/widgets/community_custom_bar.dart';
import '/widgets/community_order.dart';
import '/widgets/community_header.dart';
import '/widgets/community_item.dart';

class Menu4Page extends StatelessWidget {
  const Menu4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 3,
      appBar: customAppBar(),
      body: const _ComunidadesBody(),
    );
  }
}

class _ComunidadesBody extends StatefulWidget {
  const _ComunidadesBody();

  @override
  State<_ComunidadesBody> createState() => _ComunidadesBodyState();
}

class _ComunidadesBodyState extends State<_ComunidadesBody> {
  String _opcionSeleccionada = 'Tendencias';
  int _botonSeleccionado = 0;

  void _mostrarOrdenamiento() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1D1F23),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return OrdenamientoModal(
          opcionSeleccionada: _opcionSeleccionada,
          onSeleccion: (valor) {
            setState(() {
              _opcionSeleccionada = valor;
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      children: [
        CommunityCustomBar(
          selectedIndex: _botonSeleccionado,
          onItemSelected: (int index) {
            setState(() {
              _botonSeleccionado = index;
            });
            if (index == 0) _mostrarOrdenamiento();
          },
        ),
        const SizedBox(height: 20),
        const CommunityHeader(),
        const SizedBox(height: 20),
        const CommunityItem(
          imagenUrl: 'https://plus.unsplash.com/premium_vector-1683141059887-933a8394b824?fm=jpg&q=60&w=3000',
          titulo: 'Neuro Super Power! ADHD | Autism',
          subtitulo: '265 miembros',
          avatarUrls: [
            'https://cdn-icons-png.flaticon.com/512/219/219983.png',
            'https://cdn-icons-png.flaticon.com/512/236/236831.png',
            'https://cdn-icons-png.flaticon.com/512/2922/2922510.png',
          ],
        ),
        const SizedBox(height: 20),
        const CommunityItem(
          imagenUrl: 'https://static.eldiario.es/clip/2670b379-4214-4b9c-9be5-b7728e1f45a2_16-9-aspect-ratio_default_0.jpg',
          titulo: 'Libros recomendados',
          subtitulo: '4.461 miembros',
          avatarUrls: [
            'https://cdn-icons-png.flaticon.com/512/4140/4140051.png',
            'https://cdn-icons-png.flaticon.com/512/4140/4140036.png',
            'https://cdn-icons-png.flaticon.com/512/2922/2922506.png',
          ],
        ),
        const SizedBox(height: 20),
        const CommunityItem(
          imagenUrl: 'https://plus.unsplash.com/premium_photo-1661964301291-75df9dd37f23?fm=jpg&q=60&w=3000',
          titulo: 'Luxury Interior Design & Homes',
          subtitulo: '2.645 miembros\nEmpresa',
          avatarUrls: [
            'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
            'https://cdn-icons-png.flaticon.com/512/4140/4140037.png',
            'https://cdn-icons-png.flaticon.com/512/2922/2922656.png',
          ],
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () => print("Mostrar más presionado"),
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            alignment: Alignment.centerLeft,
          ),
          child: const Text(
            "Mostrar más",
            style: TextStyle(
              color: Colors.lightBlue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Divider(
          color: Color(0xFF2F3336),
          thickness: 1,
          height: 1,
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}