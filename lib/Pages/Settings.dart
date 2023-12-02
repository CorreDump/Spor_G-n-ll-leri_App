import 'package:flutter/material.dart';
import 'My_Appbar.dart';
import 'My_bottombar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: My_Appbar(),
      body: Text("Settings_page"),
      bottomNavigationBar: My_bottom_bar(),
    );
  }
}
