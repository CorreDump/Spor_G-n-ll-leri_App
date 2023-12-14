// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'My_Appbar.dart';
import 'My_bottombar.dart';
import 'NavBar.dart';

class Certificate extends StatelessWidget {
  Certificate({Key? key});

  final Uri _url = Uri.parse('https://sporgonulluleri.com/');
  _launchurl() async {
    if (await launchUrl(_url)) {
      print("can not open");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const My_Appbar(),
      drawer: NavBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              "Sertifikalara buradan ulaşabilirsiniz",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _launchurl,
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Container(
                width: 70,
                height: 70,
                child: Center(
                  child: Icon(
                    Icons.article_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: My_bottom_bar(),
    );
  }
}
