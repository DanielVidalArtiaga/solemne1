import 'package:flutter/material.dart';

class CancilleriaContent extends StatelessWidget {
  const CancilleriaContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text("Inicio / ", style: TextStyle(color: Colors.black54)),
              Text("Blog / ", style: TextStyle(color: Colors.black54)),
              Text("Todos", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),

          const SizedBox(height: 15),

          const Text(
            "Cancillería lanza sitio web informativo de la Apostilla",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            children: const [
              Icon(Icons.share, size: 28),
              SizedBox(width: 12),
              Icon(Icons.facebook, size: 28),
              SizedBox(width: 12),
              Icon(Icons.travel_explore, size: 28),
              Spacer(),
              Icon(Icons.text_decrease, size: 28),
              SizedBox(width: 12),
              Icon(Icons.text_increase, size: 28),
              SizedBox(width: 12),
              Icon(Icons.print, size: 28),
            ],
          ),

          const SizedBox(height: 20),

          const Text(
            "El Ministro de Relaciones Exteriores (s) Edgardo Riveros, acompañado "
            "del Ministro de Justicia y Derechos Humanos (s) Ignacio Suárez, el "
            "Director del Registro Civil, Luis Acevedo; el Subsecretario de Salud "
            "Pública (s) Pedro Crocco; y la Subsecretaria de Educación (s), Vivien "
            "Villagrán, lanzaron esta mañana el sitio web apostilla.gob.cl que "
            "contiene la información oficial sobre la implementación en una sola "
            "plataforma digital del Convenio de la Apostilla de La Haya.",
            style: TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
  }
}
