import 'package:flutter/material.dart';

class CommunityHeader extends StatelessWidget {
  const CommunityHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Descubre Comunidades nuevas',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Icon(Icons.more_vert, color: Colors.white),
      ],
    );
  }
}