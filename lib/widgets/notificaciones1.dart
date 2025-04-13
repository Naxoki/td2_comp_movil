import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String time;
  final String message;
  final VoidCallback? onMarkRead;
  final VoidCallback? onDismiss;
  final VoidCallback? onTap; // Agrega este parámetro

  const NotificationCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.time,
    required this.message,
    this.onMarkRead,
    this.onDismiss,
    this.onTap, // Asegúrate de incluirlo aquí
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Usa GestureDetector para manejar el onTap
      onTap: onTap, // Asigna la función onTap aquí
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
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
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 79, 184, 236),
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
                  style: const TextStyle(
                    color: Color.fromARGB(255, 229, 228, 228),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(message, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: onMarkRead ?? () {},
                  icon: const Icon(Icons.mark_email_read, size: 16),
                  label: const Text('Marcar leído'),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(
                      255,
                      235,
                      235,
                      235,
                    ), // Cambia el color del texto e ícono
                  ),
                ),
                const SizedBox(width: 8.0),
                TextButton.icon(
                  onPressed: onDismiss ?? () {},
                  icon: const Icon(Icons.close, size: 16),
                  label: const Text('Descartar'),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(
                      255,
                      235,
                      235,
                      235,
                    ), // Cambia el color del texto e ícono
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
