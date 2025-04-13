import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String time;
  final String message;
  final VoidCallback? onMarkRead;
  final VoidCallback? onDismiss;

  const NotificationCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.time,
    required this.message,
    this.onMarkRead,
    this.onDismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Margen y padding para separar y dar espacio interno.
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(
          255,
          0,
          0,
          0,
        ), // Cambia este color si deseas otro fondo.
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cabecera: icono circular, título y hora.
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(icon, color: Colors.white),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                time,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          // Mensaje de la notificación.
          Text(message, style: const TextStyle(fontSize: 14)),
          const SizedBox(height: 8.0),
          // Fila de acciones, por ejemplo: Marcar leído y Descartar.
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                onPressed: onMarkRead ?? () {},
                icon: const Icon(Icons.mark_email_read, size: 16),
                label: const Text('Marcar leído'),
              ),
              const SizedBox(width: 8.0),
              TextButton.icon(
                onPressed: onDismiss ?? () {},
                icon: const Icon(Icons.close, size: 16),
                label: const Text('Descartar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
