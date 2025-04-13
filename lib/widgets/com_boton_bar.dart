import 'package:flutter/material.dart';

class CustomButtonBar extends StatelessWidget {
  // Índice del botón seleccionado (0 para "Para ti", 1 para "Siguiendo")
  final int selectedButton;
  // Callback para notificar al padre cuando se selecciona un botón.
  final ValueChanged<int> onButtonSelected;

  const CustomButtonBar({
    Key? key,
    required this.selectedButton,
    required this.onButtonSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 0, 0), // Fondo negro para la barra.
        border: const Border(
          bottom: BorderSide(
            color: Colors.grey, // Línea de separación inferior de la barra.
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          // Botón "Para ti"
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // Si este botón está seleccionado, se dibuja una línea inferior.
                border: selectedButton == 0
                    ? const Border(
                        bottom: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      )
                    : null,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedButton == 0
                      ? const Color.fromARGB(255, 0, 0, 0) // Color de fondo cuando está seleccionado.
                      : const Color.fromARGB(255, 0, 0, 0), // Fondo negro si no está seleccionado.
                  foregroundColor: Colors.white,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  onButtonSelected(0);
                },
                child: const Text('inicio'),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          // Botón "Siguiendo"
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: selectedButton == 1
                    ? const Border(
                        bottom: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      )
                    : null,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedButton == 1
                      ? const Color.fromARGB(255, 0, 0, 0) // Color de fondo cuando está seleccionado.
                      : const Color.fromARGB(255, 0, 0, 0), // Fondo negro si no está seleccionado.
                  foregroundColor: Colors.white,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  onButtonSelected(1);
                },
                child: const Text('explorar'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
