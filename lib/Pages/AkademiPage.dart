import 'My_Appbar.dart';
import 'My_bottombar.dart';
import 'NavBar.dart';
import 'package:flutter/material.dart';

class AkademiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const My_Appbar(),
      drawer: NavBar(),
      body: Center(
        child: Text('Bu kısım Akademi sayfasıdır.'),
      ),
      bottomNavigationBar: My_bottom_bar(),
    );
  }
}
