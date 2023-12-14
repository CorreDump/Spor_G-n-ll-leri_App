import 'package:flutter/material.dart';
import './Pages/Main_page.dart';
import './Pages/Route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home_page(),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
