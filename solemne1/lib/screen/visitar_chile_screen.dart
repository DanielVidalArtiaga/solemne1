import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VisitarChileScreen extends StatelessWidget {
  const VisitarChileScreen({super.key});

  // ==========================
  // 🔵 Función para abrir URLs
  // ==========================
  Future<void> _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('No se pudo abrir $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      // ==============================
      // 🔵 APPBAR NEGRO CON RETORNO
      // ==============================
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "VisitarChile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      // ==============================
      // 🔵 CUERPO SCROLLEABLE
      // ==============================
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ----------------------------
            // 🔸 Breadcrumbs
            // ----------------------------
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Text(
                "Home  »  Región Metropolitana  »  Santiago  »  Categorías",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ),

            // ----------------------------
            // 🔸 Título clickeable → Museo
            // ----------------------------
            GestureDetector(
              onTap: () => _openUrl("https://www.mnhn.gob.cl"),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "BROWSING: MUSEO",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Icon(Icons.open_in_new, size: 20),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            // =============================
            // 🔵 TARJETA PRINCIPAL
            // =============================
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Imagen principal
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image.asset(
                      "assets/images/museo.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Texto
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Lugares inolvidables",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                              child: Text(
                                "Viaja con niños y disfruta de playas y destinos inolvidables.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),

                            // 👉 Flecha que abre Sernatur
                            IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () =>
                                  _openUrl("https://www.sernatur.cl"),
                            ),
                          ],
                        ),

                        const SizedBox(height: 5),

                        const Text(
                          "sernatur.cl",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // =============================
            // 🔵 Segunda imagen del museo
            // =============================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/museo2.jpg", // ← agrega esta imagen
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
