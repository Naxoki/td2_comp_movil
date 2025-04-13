import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    automaticallyImplyLeading: false, // Evita el icono de retroceso predeterminado.
    title: Row(
      children: [
        // Primer tercio: icono1 alineado a la izquierda.
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                print('Foto de perfil');
              },
            ),
          ),
        ),
        // Segundo tercio: icono2 centrado.
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () {
                print('X.com');
            },
            child: const Text(
              'X',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        // Tercer tercio: icono3 alineado a la derecha.
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                print('Configuraciones');
              },
            ),
          ),
        ),
      ],
    ),
  );
}