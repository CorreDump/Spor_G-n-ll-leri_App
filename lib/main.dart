import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(07, 67, 49, 86),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
          ),
          color: Colors.white,
          onPressed: () {
            // Menu icon is pressed
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.white,
            onPressed: () {
              // Notification icon is pressed
            },
          ),
        ],
        title: Image.asset(
          "./images/logo.png",
          height: 30,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Events',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0, // Set your desired font size
                color: Color.fromRGBO(0, 0, 0, 0.667),
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      './images/image_1.jpeg',
                      fit: BoxFit.cover,
                    ),
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.amber),
                    // Other content related to the first container
                  ),
                  SizedBox(
                    height: 25,
                    width: 50,
                  ), // Add more containers as needed
                  Container(
                    child: Image.asset(
                      './images/image_2.jpg',
                      fit: BoxFit.cover,
                    ),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.amber),
                    // Other content related to the second container
                  ),
                  SizedBox(
                    height: 25,
                    width: 50,
                  ),
                  Container(
                    child: Image.asset(
                      './images/image_3.jpeg',
                      fit: BoxFit.cover,
                    ),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.amber),
                    // Other content related to the second container
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(173, 231, 214, 0.667),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                _onItemTapped(0);
              },
            ),
            IconButton(
              icon: Icon(Icons.calendar_month),
              color: Colors.white,
              onPressed: () {
                _onItemTapped(1);
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {
                _onItemTapped(2);
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {
                _onItemTapped(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
