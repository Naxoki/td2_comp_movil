import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    automaticallyImplyLeading: false, // Evita el icono de retroceso predeterminado.
    title: Row(
      children: [
        // Elementos alineados a la izquierda: icono y texto.
        IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            print('Foto de perfil');
          },
        ),
        TextButton(
          onPressed: () {
            print('X.com');
          },
          child: const Text(
            'Comunidades',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        // El Spacer ocupa el espacio intermedio.
        const Spacer(),
        // Elementos alineados a la derecha: dos iconos.
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            print('Búsqueda');
          },
        ),
        IconButton(
          icon: const Icon(Icons.people),
          onPressed: () {
            print('Configuraciones');
          },
        ),
      ],
    ),
  );
}