import 'package:flutter/material.dart';
import 'widgets/base_page.dart';
import 'widgets/notificaciones_Bar.dart';
import 'widgets/notificaciones1.dart';

class Menu5Page extends StatelessWidget {
  const Menu5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 0, // Indica que Menu1 está seleccionado.
      appBar: notificacionBar('Menú 1'),
      body: ListView(
        children: [
          // Nueva barra justo debajo del AppBar con 2 botones que ocupen todo el ancho
          Container(
            color: const Color.fromARGB(
              255,
              0,
              0,
              0,
            ), // Color de fondo para la barra (puedes personalizarlo)
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Row(
              children: [
                // Primer botón expandido
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción del Botón 1
                      print('Botón 1 presionado');
                    },
                    child: const Text('Todas'),
                  ),
                ),
                const SizedBox(width: 8.0),

                // Primer botón expandido
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción del Botón 1
                      print('Botón 1 presionado');
                    },
                    child: const Text('Verificado'),
                  ),
                ),
                const SizedBox(width: 8.0),
                // Segundo botón expandido
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción del Botón 2
                      print('Botón 2 presionado');
                    },
                    child: const Text('Menciones'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),

          // Ejemplo de primera notificación
          NotificationCard(
            icon: Icons.notifications,
            title: 'Notificación Importante',
            time: '10:30 AM',
            message: 'Tienes un nuevo mensaje en tu buzón de entrada.',
          ),
          // Ejemplo de primera notificación
          NotificationCard(
            icon: Icons.notifications,
            title: 'Notificación Importante',
            time: '10:30 AM',
            message: 'Tienes un nuevo mensaje en tu buzón de entrada.',
          ), // Ejemplo de primera notificación
          NotificationCard(
            icon: Icons.notifications,
            title: 'Notificación Importante',
            time: '10:30 AM',
            message: 'Tienes un nuevo mensaje en tu buzón de entrada.',
          ), // Ejemplo de primera notificación
          NotificationCard(
            icon: Icons.notifications,
            title: 'Notificación Importante',
            time: '10:30 AM',
            message: 'Tienes un nuevo mensaje en tu buzón de entrada.',
          ),
        ],
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones'),
        bottom: TabBar(
          tabs: [
            Tab(text: 'Todas'),
            Tab(text: 'Verificado'),
            Tab(text: 'Menciones'),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          _buildNotificationList(context, 'todas'),
          _buildNotificationList(context, 'verificado'),
          _buildMentionsTab(context),
        ],
      ),
    ),
  );
}

Widget _buildNotificationList(BuildContext context, String type) {
  List<NotificationTile> notifications = [];

  if (type == 'todas' || type == 'verificado') {
    notifications.add(
      NotificationTile(
        message:
            'Se ha iniciado sesión en tu cuenta @88Zoro desde un dispositivo nuevo el 11 abr. 2025. Compruébalo ahora.',
        onTap: () => _showNotificationDetails(context, 'login'),
      ),
    );
  }

  if (type == 'todas') {
    notifications.add(
      NotificationTile(
        message: 'Se ha cambiado correctamente la contraseña de tu cuenta.',
        onTap: () => _showNotificationDetails(context, 'password_change'),
      ),
    );
  }

  return ListView(padding: const EdgeInsets.all(16), children: notifications);
}

Widget _buildMentionsTab(BuildContext context) {
  return ListView(
    padding: const EdgeInsets.all(16),
    children: [
      Image.network(
        'https://abs.twimg.com/responsive-web/client-web/illustration_unmention_1200w.a6d67a6a.png',
      ),
      const SizedBox(height: 16),
      const Text(
        'Controla en qué conversaciones se te menciona',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      const Text(
        'Usa el menú de acciones (los tres puntitos que aparecen en los posts) para desetiquetarte y salir de la conversación. Más información',
        style: TextStyle(fontSize: 16),
      ),
      const SizedBox(height: 16),
      NotificationTile(
        message:
            'César Saavedra\n 12 mar. 2013\nEn respuesta a \n@88Zoro\n Debes ver UFC hoy',
        onTap: () {},
      ),
    ],
  );
}

void _showNotificationDetails(BuildContext context, String type) {
  String content = '';

  if (type == 'login') {
    content =
        'Hubo un inicio de sesión en tu cuenta @88Zoro desde un dispositivo nuevo.\n\n'
        'Dispositivo: Android\n'
        'Ubicacion*: Santiago, Chile\n'
        'Cuando: viernes, 11 de abril de 2025 at 5:40 p. m. GMT-7 (hace 2 horas)\n\n'
        '*La ubicación es aproximada según la dirección IP de inicio de sesión.\n\n'
        'Si fuiste tú\n'
        '• Puedes ignorar este mensaje.\n\n'
        'Si no fuiste tú\n'
        '• Cambia tu contraseña ahora mismo para proteger tu cuenta. Se cerrarán todas tus sesiones activas de X, excepto la que estás usando en este momento.';
  } else if (type == 'password_change') {
    content =
        'Tu contraseña se ha cambiado correctamente.\n\n'
        'Si no realizaste este cambio, por favor contacta con soporte inmediatamente.';
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

class NotificationTile extends StatelessWidget {
  final String message;
  final VoidCallback onTap;

  const NotificationTile({
    required this.message,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: Icon(
            Icons.error,
            color: const Color.fromARGB(255, 207, 201, 201),
          ),
          title: Text(message, style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}