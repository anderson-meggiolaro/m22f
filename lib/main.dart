import 'package:flutter/material.dart';
import 'package:maway/crate_material_color.dart';
import 'package:maway/screens/my_splash_screen.dart';

class MyColors {
  static MaterialColor primary = createMaterialColor(const Color(0xFF285D2B));
  static MaterialColor secondary = createMaterialColor(const Color(0xFFF9DE76));
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Roboto',
      primarySwatch: MyColors.primary,
    ),
    home: MySplashScreen(),
  ));
}
