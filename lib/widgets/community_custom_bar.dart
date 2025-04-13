import 'package:flutter/material.dart';

class CommunityCustomBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const CommunityCustomBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  void _mostrarOrdenamiento(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1D1F23),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Ordenar posts',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Más recientes', style: TextStyle(color: Colors.white)),
                trailing: const Icon(Icons.check, color: Colors.lightBlue),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Tendencias', style: TextStyle(color: Colors.white)),
                trailing: const Icon(Icons.trending_up, color: Colors.lightBlue),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 1),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          // Botón "Inicio"
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: selectedIndex == 0
                    ? const Border(
                        bottom: BorderSide(
                          color: Colors.lightBlue,
                          width: 2,
                        ),
                      )
                    : null,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: selectedIndex == 0 ? Colors.white : Colors.grey,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => _mostrarOrdenamiento(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Inicio'),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_drop_down, size: 20, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          // Botón "Explorar"
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: selectedIndex == 1
                    ? const Border(
                        bottom: BorderSide(
                          color: Colors.lightBlue,
                          width: 2,
                        ),
                      )
                    : null,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: selectedIndex == 1 ? Colors.white : Colors.grey,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => onItemSelected(1),
                child: const Text('Explorar'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}