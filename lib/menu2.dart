import 'package:flutter/material.dart';
import 'widgets/base_page.dart';
import 'widgets/custom_bar_conbuscador.dart';
import 'widgets/trend_item.dart';

class Menu2Page extends StatelessWidget {
  const Menu2Page({Key? key}) : super(key: key);

  static const List<Map<String, String?>> _trendData = [
    {'title': '#Lanzamiento Nintendo Switch 2', 'posts': '1.272 publicaciones'},
    {'title': '#ELDEN RING Shadow of the Erdtree', 'posts': '4.438 publicaciones'},
    {'title': '#ELDEN RING NIGHTREIGN', 'posts': '2.847 publicaciones'},
    {'title': '#Temblor jaja', 'posts': null},
    {'title': '#Michis', 'posts': '12,6 mil publicaciones'},
    {'title': '#Conmebol', 'posts': '1.337 publicaciones'},
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 1,
      appBar: customAppBarConBuscador(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _TabsRow(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 12, bottom: 24),
              itemCount: _trendData.length * 2 - 1, // ítems + divisores
              itemBuilder: (context, index) {
                if (index.isOdd) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      color: Colors.white24,
                      thickness: 0.6,
                      height: 1,
                    ),
                  );
                }
                final item = _trendData[index ~/ 2];
                return TrendItem(title: item['title']!, posts: item['posts']);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _TabsRow extends StatelessWidget {
  const _TabsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
      padding: const EdgeInsets.only(right: 16),
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
