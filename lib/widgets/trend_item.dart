import 'package:flutter/material.dart';

class TrendItem extends StatelessWidget {
  final String title;
  final String? posts;

  const TrendItem({Key? key, required this.title, this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (posts != null)
            Text(
              posts!,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Tendencia en Chile',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
