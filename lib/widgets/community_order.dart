import 'package:flutter/material.dart';

class OrdenamientoModal extends StatelessWidget {
  final String opcionSeleccionada;
  final Function(String) onSeleccion;

  const OrdenamientoModal({
    Key? key,
    required this.opcionSeleccionada,
    required this.onSeleccion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          // Más recientes
          RadioListTile<String>(
            contentPadding: EdgeInsets.zero,
            title: const Text('Más recientes', style: TextStyle(color: Colors.white)),
            value: 'Más recientes',
            groupValue: opcionSeleccionada,
            activeColor: Colors.lightBlue,
            onChanged: (value) {
              onSeleccion(value!);
              Navigator.pop(context);
            },
          ),
          // Tendencias
          RadioListTile<String>(
            contentPadding: EdgeInsets.zero,
            title: const Text('Tendencias', style: TextStyle(color: Colors.white)),
            value: 'Tendencias',
            groupValue: opcionSeleccionada,
            activeColor: Colors.lightBlue,
            onChanged: (value) {
              onSeleccion(value!);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}