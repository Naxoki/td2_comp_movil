import 'package:flutter/material.dart';

class CommunityItem extends StatelessWidget {
  final String imagenUrl;
  final String titulo;
  final String subtitulo;
  final List<String> avatarUrls;

  const CommunityItem({
    super.key,
    required this.imagenUrl,
    required this.titulo,
    required this.subtitulo,
    required this.avatarUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imagenUrl,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 70,
                height: 70,
                color: Colors.grey,
                child: const Icon(Icons.broken_image, color: Colors.white),
              );
            },
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
              const SizedBox(height: 4),
              Text(
                subtitulo,
                style: const TextStyle(fontSize: 13, color: Colors.white70),
              ),
              const SizedBox(height: 4),
              SizedBox(
                height: 24,
                child: Stack(
                  children: List.generate(
                    avatarUrls.length.clamp(0, 4),
                    (index) => Positioned(
                      left: index * 20,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(avatarUrls[index]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}