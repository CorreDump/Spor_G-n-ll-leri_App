import 'package:flutter/material.dart';
import 'Pages/Certificate_page.dart';
import 'Pages/Past_event.dart';
import 'Pages/Settings.dart';
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
        routes: {
          '/Certificate_page': (context) => Certificate(),
          '/Settings_page': (context) => Settings(),
          '/Past_event_page': (context) => Past_event(),
          '/Home_page': (context) => MyApp()
        }
        // this helps us to getting error in the page
        // onUnknownRoute: (settings) => ,
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
