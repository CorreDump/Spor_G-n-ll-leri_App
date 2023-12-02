import 'package:flutter/material.dart';
import 'Certificate_page.dart';
import 'Settings.dart';
import 'Past_event.dart';
import '../main.dart';

class My_bottom_bar extends StatelessWidget {
  const My_bottom_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromRGBO(97, 173, 151, 0.667),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            color: Colors.white,
            onPressed: () {
              // boyle kullanmak daha mantikli gibi
              //Navigator.of(context).pushNamed("/Home_page");
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          IconButton(
            icon: Icon(Icons.calendar_month),
            color: Colors.white,
            onPressed: () {
              // push replacement stack yeri degisir bu kullanilabilir stack surekli yer tutmus olmaz
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Past_event()));
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Certificate()));
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Settings()));
            },
          )
        ],
      ),
    );
  }
}
