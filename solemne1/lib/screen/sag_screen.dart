import 'package:flutter/material.dart';

class SagScreen extends StatelessWidget {
  const SagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Noticias | SAG")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ===============================
            // MINISTERIO DE AGRICULTURA + SAG
            // ===============================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/ministerio.jpg",
                    height: 30, // ajusta tamaño si quieres
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 4),

                  const Text(
                    "Ministerio de Agricultura",
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    "SAG",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // ===============================
            // TÍTULO NOTICIAS
            // ===============================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              color: Colors.white,
              child: const Text(
                "Noticias",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            // ===============================
            // IMAGEN GRANDE
            // ===============================
            Container(
              width: double.infinity,
              height: 180,
              color: Colors.grey, // reemplazar por Image.asset o NetworkImage
              child: Image.asset(
                "assets/images/sag.jpg", // cambia por la tuya
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 15),

            // ===============================
            // TARJETA DE NOTICIA PRINCIPAL
            // ===============================
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 16),
                      SizedBox(width: 5),
                      Text("15 de Noviembre 2025"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Continúan trabajos en sistemas del SAG",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "El Servicio Agrícola y Ganadero informa que equipos de Tecnologías de la "
                    "Información del SAG, junto a especialistas de Microsoft, continúan "
                    "trabajando intensamente para restablecer los sistemas...",
                    style: TextStyle(fontSize: 15, height: 1.4),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
