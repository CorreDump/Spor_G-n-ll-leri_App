import 'package:flutter/material.dart';
import 'My_Appbar.dart';
import 'My_bottombar.dart';
import 'Information.dart';
import 'NavBar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(203, 203, 203, 0.984),
      appBar: My_Appbar(),
      drawer: NavBar(),
      body: InformationForm(),
      bottomNavigationBar: My_bottom_bar(),
    );
  }
}
