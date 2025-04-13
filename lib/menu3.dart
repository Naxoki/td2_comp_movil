import 'package:flutter/material.dart';
import 'widgets/base_page.dart';
import 'widgets/grok_app_bar.dart';

class Menu3Page extends StatelessWidget {
  const Menu3Page({Key? key}) : super(key: key);

//no estaba seguro si dejar todo el texto en inglés o en español así opté por dejarlo como estaba en la screenshot nomás que estaba en ambos
  static const caracteristicas = [
    {
      "icono": Icons.search_outlined,
      "titulo": "DeepSearch",
      "contenido": "Haz búsquedas profundas para obtener respuestas detalladas y correctamente razonadas con la búsqueda rápida y proactiva de Grok.",
    },
    {
      "icono": Icons.lightbulb_outline,
      "titulo": "Think",
      "contenido": "Resuelve los problemas más difíciles en las áreas de matemáticas, ciencia y programacion con nuestro modelo de razonamiento.",
    },
    {
      "icono": Icons.brush_outlined,
      "titulo": "Edit Image",
      "contenido": "Transforma tus imágenes con transferencias de estilo, ediciones y mucho más.",
    },
  ];

  static const iconosInferiores = [
    Icons.attach_file,
    Icons.autorenew,
    Icons.lightbulb_outline,
    Icons.edit,
    Icons.tune,
  ];

  @override
  Widget build(BuildContext context) {
    final colorTarjeta = Theme.of(context).cardColor;

    return BasePage(
      appBar: customAppBar(),
      currentIndex: 2,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              children: [
                Card(
                  color: colorTarjeta,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: const Icon(Icons.star),
                    title: const Text("Grok for Android is here"),
                    subtitle: const Text("Get the best Grok experience in our new standalone app"),
                    trailing: IconButton(
                      icon: const Icon(Icons.chevron_right),
                      onPressed: () {},
                    ),
                    contentPadding: const EdgeInsets.all(12),
                  ),
                ),
                const SizedBox(height: 12),

                Card(
                  color: colorTarjeta,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 14,
                      backgroundColor: colorTarjeta,
                      child: const Icon(
                        Icons.account_circle,
                        size: 24,
                        color: Colors.white70,
                      ),
                    ),
                    title: const Text("Dibújame"),
                    subtitle: const Text("¡Haz click aquí para tratar un estilo al azar!"),
                    contentPadding: const EdgeInsets.all(12),
                  ),
                ),
                const SizedBox(height: 24),

                const Text("Grok 3 is here.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text("Try our new features: DeepSearch, Think, and Edit Image",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
                const SizedBox(height: 12),

                for (final caracteristica in caracteristicas)
                  Card(
                    color: colorTarjeta,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Icon(caracteristica["icono"] as IconData),
                      title: Text(
                        caracteristica["titulo"] as String,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(caracteristica["contenido"] as String),
                      contentPadding: const EdgeInsets.all(12),
                    ),
                  ),
              ],
            ),
          ),

          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: "Pregunta cualquier cosa",
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      filled: true,
                      fillColor: const Color(0xFF2A2A2A),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                for (final icono in iconosInferiores)
                  IconButton(onPressed: () {}, icon: Icon(icono)),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_upward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}