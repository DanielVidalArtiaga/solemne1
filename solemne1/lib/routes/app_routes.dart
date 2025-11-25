import 'package:flutter/material.dart';
import 'package:solemne1/screen/home_screen.dart';
import 'package:solemne1/screen/cancilleria_screen.dart';
import 'package:solemne1/screen/cooperativa_screen.dart';
import 'package:solemne1/screen/hoy_screen.dart';
import 'package:solemne1/screen/sag_screen.dart';
import 'package:solemne1/screen/visitar_chile_screen.dart';

class AppRoutes {
  static const initialRoute = 'home_menu';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home_menu': (context) => const HomeScreen(),
    'cancilleria': (context) => const CancilleriaScreen(),
    'cooperativa': (context) => const CooperativaScreen(),
    'hoy': (context) => const HoyScreen(),
    'sag': (context) => const SagScreen(),
    'visitar': (context) => const VisitarChileScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
