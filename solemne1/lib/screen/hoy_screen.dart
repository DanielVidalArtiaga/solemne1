import 'package:flutter/material.dart';

class HoyScreen extends StatelessWidget {
  const HoyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),

        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            Center(
              child: Text(
                "hoy.cl",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[700],
                ),
              ),
            ),

            const SizedBox(height: 5),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              color: const Color.fromARGB(255, 250, 249, 252),
              child: const Center(
                child: Text(
                  "Noticias de 16 de noviembre 2025, 22:25 horas",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 4, 130, 234),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ============================
            // SECCIÓN PAÍS
            // ============================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.lightBlue[50],
              child: const Text(
                "País",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

            Container(
              color: Colors.blue[50],
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 100,
                        child: Image.asset(
                          "assets/images/jarol.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          "Mayne-Nicholls: Sacamos mucho menos votación de la que nunca nos imaginamos",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 29, 6, 241),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  const NewsItem(
                    text:
                        "Parisi: Kast y Jara tienen que hacer gestos porque el PDG no necesita ningún favor",
                  ),

                  const NewsItem(
                    text:
                        "Insulza, Durana, Ebensperger y Prohens dicen adiós al Senado",
                  ),

                  const NewsItem(
                    text:
                        "Colas en las mesas de votación: Servel abierto a buscar formas de 'optimizar el proceso'",
                  ),

                  const NewsItem(
                    text: "El conteo de votos de la apretada primera vuelta",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // ============================
            // SECCIÓN EL MUNDO
            // ============================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 245, 221, 4),
              child: const Center(
                child: Text(
                  "El Mundo",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Container(
              color: Colors.yellow[100],
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 100,
                        child: Image.asset(
                          "assets/images/jarakast.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          "Elecciones en Chile: la comunista Jara y el ultraderechista Kast competirán con modelos opuestos por la presidencia en la segunda vuelta",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 4, 130, 234),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  const NewsItem(
                    text:
                        "EE.UU. mató a otras tres personas que viajaban en...",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// =====================================
// WIDGET NewsItem (sin errores)
// =====================================
class NewsItem extends StatelessWidget {
  final String text;

  const NewsItem({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          color: Color.fromARGB(255, 4, 130, 234),
        ),
      ),
    );
  }
}
