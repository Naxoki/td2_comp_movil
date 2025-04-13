import 'package:flutter/material.dart';

PreferredSizeWidget customAppBarConBuscador() {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    title: Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(24),
      ),
      alignment: Alignment.centerLeft,
      child: const Text(
        'Buscar',
        style: TextStyle(color: Colors.grey),
      ),
    ),
    leading: IconButton(
      icon: const Icon(Icons.account_circle),
      onPressed: () {
        print('foto de perfil');
      },
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.one_x_mobiledata_sharp),
        onPressed: () {
          print('icono de X');
        },
      ),
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () {
          print('configuraciones');
        },
      ),
    ],
  );
}
