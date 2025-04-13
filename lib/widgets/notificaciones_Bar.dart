import 'package:flutter/material.dart';

PreferredSizeWidget notificacionBar(String title) {
  return AppBar(
    title: Text(title),
    actions: [
      IconButton(
        icon: const Icon(Icons.account_circle),
        onPressed: () {
          print('foto de perfil');
        },
      ),
      IconButton(
        icon: const Icon(Icons.one_x_mobiledata_sharp),
        onPressed: () {
          print('icono de X');
        },
      ),
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () {
          print('configuraciuones');
        },
      ),
    ],
  );
}
