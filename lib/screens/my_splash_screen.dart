import 'package:flutter/material.dart';
import 'package:maway/crate_material_color.dart';
import 'package:maway/main.dart';
import 'package:maway/screens/main_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 3,
        navigateAfterSeconds: MainScreen(),
        image: Image.asset('assets/images/Logo_Cor_Tagline.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: const TextStyle(),
        photoSize: 150.0,
        loaderColor: MyColors.secondary);
  }
}
