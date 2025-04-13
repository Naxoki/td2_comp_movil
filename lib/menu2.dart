import 'package:flutter/material.dart';
import 'widgets/base_page.dart';

class Menu2Page extends StatelessWidget {
  const Menu2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 1,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const _TopBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _TabsBar(),
          Expanded(
            child: ListView(
              children: const [
                TrendItem(title: 'Lago Ranco', posts: '1.272 publicaciones'),
                TrendItem(title: 'Egipto', posts: '4.438 publicaciones'),
                TrendItem(title: 'Cavada', posts: '2.847 publicaciones'),
                TrendItem(title: '#Sismo'),
                TrendItem(title: 'Murieron', posts: '12,6 mil publicaciones'),
                TrendItem(title: 'Monsalve', posts: '1.337 publicaciones'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage('assets/profile.jpg'),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 36,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(24),
            ),
            alignment: Alignment.centerLeft,
            child: const Text('Buscar', style: TextStyle(color: Colors.grey)),
          ),
        ),
        const SizedBox(width: 12),
        const Icon(Icons.settings, color: Colors.white),
      ],
    );
  }
}

class _TabsBar extends StatelessWidget {
  const _TabsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8, left: 12, bottom: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _TabItem(text: 'Para ti', selected: true),
            _TabItem(text: 'Tendencias'),
            _TabItem(text: 'Noticias'),
            _TabItem(text: 'Deportes'),
            _TabItem(text: 'Entretenimiento'),
          ],
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String text;
  final bool selected;

  const _TabItem({Key? key, required this.text, this.selected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: selected ? Colors.white : Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          if (selected)
            Container(
              height: 2,
              width: 24,
              color: Colors.blue,
            ),
        ],
      ),
    );
  }
}

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
            Text(posts!, style: const TextStyle(color: Colors.grey, fontSize: 14)),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          const Text('Tendencia en Chile', style: TextStyle(color: Colors.grey, fontSize: 13)),
          const Divider(color: Colors.grey, thickness: 0.4),
        ],
      ),
    );
  }
}