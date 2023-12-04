import 'package:flutter/material.dart';
import 'package:flutter_application_pages/Pages/Route_generator.dart';
import 'Pages/Certificate_page.dart';
import 'Pages/Main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(07, 67, 49, 86)),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  IconButton myAppIcon(IconData iconData, Color color) {
    return IconButton(
      icon: Icon(iconData),
      color: color,
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (content) => Certificate()));
        _onItemTapped(1);
      },
    );
  }

  void _onItemTapped(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Home_page();
  }
}
