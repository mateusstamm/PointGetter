import 'package:flutter/material.dart';
import 'widgets/drawer/default_drawer.dart';
import 'widgets/main/option_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PointGetter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PointGetter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 169, 6),
        title: Text(widget.title),
      ),
      drawer: const DefaultDrawer(),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'lib/src/images/main-background.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              color: Colors.white.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 40),
                  const Text(
                    'Menu Principal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      //fontFamily: "Raleway",
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            OptionWidget(
                              title: 'Opção 1',
                              color: Colors.lightGreen,
                              iconImagePath:
                                  'lib/src/images/c_gerenciar-ponto.png',
                            ),
                            const SizedBox(width: 20),
                            OptionWidget(
                              title: 'Opção 2',
                              color: Colors.lightGreen,
                              iconImagePath:
                                  'lib/src/images/c_gerenciar-ponto.png',
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            OptionWidget(
                              title: 'Opção 3',
                              color: Colors.lightGreen,
                              iconImagePath:
                                  'lib/src/images/c_gerenciar-ponto.png',
                            ),
                            const SizedBox(width: 20),
                            OptionWidget(
                              title: 'Opção 4',
                              color: Colors.lightGreen,
                              iconImagePath:
                                  'lib/src/images/c_gerenciar-ponto.png',
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            OptionWidget(
                              title: 'Opção 5',
                              color: Colors.lightGreen,
                              iconImagePath:
                                  'lib/src/images/c_gerenciar-ponto.png',
                            ),
                            const SizedBox(width: 20),
                            OptionWidget(
                              title: 'Opção 6',
                              color: Colors.lightGreen,
                              iconImagePath:
                                  'lib/src/images/c_gerenciar-ponto.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
