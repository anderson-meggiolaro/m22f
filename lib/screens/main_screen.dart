import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:maway/my_app_bar.dart';
import 'package:maway/screens/elaborador_screen.dart';
import 'package:maway/screens/inicio_screen.dart';
import 'package:maway/screens/pagamento_screen.dart';
import 'package:maway/screens/perfil_screen.dart';
import 'package:maway/screens/placeholder_screen.dart';
import 'package:maway/screens/provas_screen.dart';

class MainScreen extends StatefulWidget {
  // const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    PlaceholderScreen(InicioScreen()),
    PlaceholderScreen(ProvasScreen()),
    PlaceholderScreen(ElaboradorScreen()),
    PlaceholderScreen(PagamentoScreen()),
    PlaceholderScreen(PerfilScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        selectedFontSize: 14,
        selectedIconTheme: const IconThemeData(size: 30),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Home_Icon.png'),
              label: "Início"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Notificacoes_Icon.png'),
              label: "Provas"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Elaborador_Icon.png'),
              label: "Elaborador"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Pagamento_Icon.png'),
              label: "Pagamento"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Perfil_Icon.png'),
              label: "Perfil"),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
