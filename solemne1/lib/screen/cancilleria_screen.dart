import 'package:flutter/material.dart';
import '../widgets/cancilleria_appbar.dart';
import '../widgets/cancilleria_content.dart';

class CancilleriaScreen extends StatelessWidget {
  const CancilleriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CancilleriaAppBar(),
      body: const SingleChildScrollView(child: CancilleriaContent()),
    );
  }
}
