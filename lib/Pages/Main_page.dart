import 'package:flutter/material.dart';
import 'My_bottombar.dart';
import 'My_Appbar.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: My_Appbar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Gelecekteki Etkinlikler',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0, // Set your desired font size
                color: Color.fromRGBO(16, 0, 0, 0.667),
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 48.0),
                    child: Image.asset(
                      './images/image_1.jpeg',
                      fit: BoxFit.cover,
                    ),
                    height: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: My_bottom_bar(),
    );
  }
}
