import 'package:flutter/cupertino.dart';

class PlaceholderScreen extends StatelessWidget {
  final Widget screen;

  PlaceholderScreen(this.screen);

  @override
  Widget build(BuildContext context) {
    return Container(child: screen);
  }
}
