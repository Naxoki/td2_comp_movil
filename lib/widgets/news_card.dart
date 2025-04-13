import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  // Parámetros existentes
  final IconData leftIcon;
  final String title;
  final IconData rightIcon;
  final String description;
  final String imageUrl;
  
  // Nuevo parámetro para el color de fondo con un valor por defecto (Colors.white)
  final Color backgroundColor;

  const NewsCard({
    Key? key,
    required this.leftIcon,
    required this.title,
    required this.rightIcon,
    required this.description,
    required this.imageUrl,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        // Usamos el parámetro backgroundColor en lugar de un valor fijo.
        color: backgroundColor,
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
          // Fila superior: icono izquierdo, título centrado y icono derecho.
          Row(
            children: [
              Icon(leftIcon, color: Colors.blue),
              const SizedBox(width: 8.0),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Icon(rightIcon, color: Colors.blue),
            ],
          ),
          const SizedBox(height: 8.0),
          // Texto de descripción
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 8.0),
          // Imagen de la noticia
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(imageUrl), // Cambia a Image.asset si usas assets.
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          // Fila de iconos de reacciones (6 iconos)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.thumb_up_alt_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.comment_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.share_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.star_border),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.report),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
