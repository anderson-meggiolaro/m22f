import 'package:flutter/material.dart';
import 'package:maway/crate_material_color.dart';

class InicioScreen extends StatelessWidget {
  String texto1 =
      'Certificados para leituras de livros, palestras em vídeo, cursos presenciais e on-line, cursos acadêmicos. Mais de 30 mil conteúdos cadastrados. ';
  String texto2 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel purus eu leo pretium ultricies. Quisque dictum libero in ante lobortis, a commodo tortor laoreet. Donec vel fermentum urna, ac tincidunt dolor. Praesent fermentum libero non dolor interdum, vitae scelerisque nunc condimentum. Sed tincidunt, odio quis dapibus tincidunt, risus lacus placerat odio, sed porta est nibh id tortor.';

  var textStyle = const TextStyle();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: createMaterialColor(const Color(0xFF285D2B)),
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <TabBar>[
                  TabBar(
                    tabs: [
                      Tab(
                        text: 'Início',
                      ),
                      Tab(
                        text: 'Recursos',
                      ),
                      Tab(
                        text: 'Ranking',
                      ),
                    ],
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(texto1, textAlign: TextAlign.justify)),
                      Image.asset('assets/images/Ranking2.png'),
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(texto2, textAlign: TextAlign.justify)),
                    ],
                  ),
                ),
                Center(child: Text("Recursos", style: textStyle)),
                Center(child: Text("Ranking", style: textStyle)),
              ],
            ),
          ),
        ));
  }
}
