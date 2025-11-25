import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  final String imageUrl;

  const HeaderImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        imageUrl,
        width: double.infinity,
        height: 220,
        fit: BoxFit.cover,
      ),
    );
  }
}
