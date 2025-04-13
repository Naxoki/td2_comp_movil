import 'package:flutter/material.dart';
import 'widgets/base_page.dart';
import 'widgets/notificaciones_Bar.dart';
import 'widgets/notificaciones1.dart'; // Aquí se importa el nuevo NotificationCard
import 'widgets/notificacionesbutton.dart';

class Menu5Page extends StatelessWidget {
  const Menu5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 0,
      appBar: notificacionBar('Notificaciones'),
      body: ListView(
        children: [
          const NotificationButtons(),
          const SizedBox(height: 8.0),

          // Usar NotificationCard para cada notificación
          NotificationCard(
            icon: Icons.notifications_active,
            title: 'Se detectó un nuevo inicio de sesión',
            time: '08:17 AM',
            message:
                'Hubo un inicio de sesión en tu cuenta @88Zoro desde un dispositivo nuevo.',
            onTap:
                () => _showNotificationDetails(
                  context,
                  'login',
                ), // Mostrar detalles
            onDismiss: () => print('Notificación de inicio descartada'),
          ),
          NotificationCard(
            icon: Icons.notification_add_sharp,
            title: 'Cambio exitoso de su contraseña',
            time: '10:30 AM',
            message: 'Se ha cambiado correctamente su contraseña.',
            onTap: () => _showNotificationDetails(context, 'password_change'),
            onDismiss: () => print('Notificación de contraseña descartada'),
          ),
          NotificationCard(
            icon: Icons.newspaper,
            title: 'Sanción en el Monumental',
            time: '11:13 AM',
            message: '@CSaavedra subió una nueva publicación.',
            onTap: () => _showNotificationDetails(context, 'Noticia'),
            onDismiss: () => print('Notificación de noticia descartada'),
          ),
          NotificationCard(
            icon: Icons.notifications,
            title: 'Notificación Importante',
            time: '12:10 AM',
            message: 'Tienes un nuevo mensaje en tu buzón de entrada.',
            onTap: () => _showNotificationDetails(context, 'message'),
            onDismiss: () => print('Notificación de mensaje descartada'),
          ),
        ],
      ),
    );
  }

  void _showNotificationDetails(BuildContext context, String type) {
    String content = '';

    if (type == 'login') {
      content =
          'Hubo un inicio de sesión en tu cuenta @88Zoro desde un dispositivo nuevo.\n\n'
          'Dispositivo: Android\n'
          'Ubicación*: Santiago, Chile\n'
          'Cuando: viernes, 11 de abril de 2025 a las 5:40 p. m. GMT-7 \n\n'
          '*La ubicación es aproximada según la dirección IP de inicio de sesión.\n\n'
          'Si fuiste tú:\n'
          '• Puedes ignorar este mensaje.\n\n'
          'Si no fuiste tú:\n'
          '• Cambia tu contraseña ahora mismo para proteger tu cuenta. Se cerrarán todas tus sesiones activas de X, excepto la que estás usando en este momento.';
    } else if (type == 'password_change') {
      content =
          'Tu contraseña se ha cambiado correctamente.\n\n'
          'Si no realizaste este cambio, por favor contacta con soporte inmediatamente.';
    } else if (type == 'Noticia') {
      content =
          '@CSaavedra subió una nueva publicación.\n\n'
          'Conmebol confirmó este viernes, a través de su Unidad Disciplinaria, '
          'que se abrió el expediente disciplinario en contra de Colo Colo '
          'por el incidente que involucró a hinchas del club.\n\n'
          'Ver la publicación.';
    } else if (type == 'message') {
      content = 'Tienes un nuevo mensaje en tu buzón de entrada.';
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Detalles de la Notificación'),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Entendido'),
            ),
          ],
        );
      },
    );
  }
}
