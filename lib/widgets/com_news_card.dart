import 'package:flutter/material.dart';

class NewsCard1 extends StatelessWidget {
  // Parámetros existentes
  final IconData leftIcon;
  final String title;
  final String user; // Nombre de usuario
  final IconData rightIcon;
  final String description;
  final String imageUrl;
  final String comunidad; // Nombre de la comunidad
  
  // Parámetro para el color de fondo, con valor por defecto (negro)
  final Color backgroundColor;

  const NewsCard1({
    Key? key,
    required this.leftIcon,
    required this.title,
    required this.user,
    required this.rightIcon,
    required this.description,
    required this.imageUrl,
    required this.comunidad,

    this.backgroundColor = const Color.fromARGB(255, 0, 0, 0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
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
          // Nueva fila para mostrar el icono y texto "Comunidad"
          Row(
            children: [
              Icon(Icons.group, color: Colors.white), // Icono de comunidad
              const SizedBox(width: 8.0),
              Text(
                comunidad,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          // Fila superior: icono izquierdo, title y user (en una Row), y icono derecho.
          Row(
            children: [
              Icon(leftIcon, color: Colors.blue),
              const SizedBox(width: 8.0),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Text(
                        user,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 78, 73, 73),
                        ),
                      ),
                    ],
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
