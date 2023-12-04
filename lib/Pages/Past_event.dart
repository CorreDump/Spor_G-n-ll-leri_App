import 'package:flutter/material.dart';
import 'My_Appbar.dart';
import 'My_bottombar.dart';
import 'NavBar.dart';

class Past_event extends StatelessWidget {
  const Past_event({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: My_Appbar(),
      drawer: NavBar(),
      body: Text("Past_event"),
      bottomNavigationBar: My_bottom_bar(),
    );
  }
}
