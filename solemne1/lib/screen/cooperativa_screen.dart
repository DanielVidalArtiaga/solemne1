import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CooperativaScreen extends StatelessWidget {
  const CooperativaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // FORMATO FECHA
    final fecha = DateFormat(
      "EEEE, d 'de' MMMM 'de' y",
    ).format(DateTime(2025, 11, 22));

    return Scaffold(
      backgroundColor: Colors.white,

      // ---------------------- APPBAR SUPERIOR ----------------------
      appBar: AppBar(
        backgroundColor: const Color(0xFF156BC1),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Cooperativa",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ],
      ),

      // ---------------------- CUERPO GENERAL ----------------------
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // ---------------------- TITULAR ----------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Cambia de canal detrás del muro:\nTendrán contrato y cotizaciones.",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),
            ),

            const SizedBox(height: 25),

            // ---------------------- BLOQUE "PUBLICADO" ----------------------
            Container(
              width: double.infinity,
              color: const Color(0xFFF2F2F2),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Publicado: $fecha | 09:39 hrs | Autor: Cooperativa.cl",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  height: 1.3,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ---------------------- TEXTO DE NOTICIA ----------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "El equipo del programa de humor detrás del muro "
                "encomendó al mismo Kike Morandé negociar con Mega.",
                style: const TextStyle(
                  fontSize: 20,
                  height: 1.55,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ---------------------- IMAGEN PRINCIPAL ----------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/morande.jpg",
                  width: double.infinity,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 25),

            // ---------------------- ICONOS SOCIALES ----------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.facebook, size: 36),
                Icon(Icons.share, size: 36),
                Icon(Icons.print, size: 36),
                Icon(Icons.email, size: 36),
                Icon(Icons.more_horiz, size: 36),
              ],
            ),

            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
