import 'package:flutter/material.dart';
import 'HakkimizdaPage.dart';
import 'AkademiPage.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: Color.fromRGBO(7, 67, 49, 1), // Adjusted color range
            padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hoş Geldiniz',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (ModalRoute.of(context)?.settings.name !=
                        '/Sign_in_page') {
                      Navigator.of(context).pushNamed('/Sign_in_page');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the button background color
                  ),
                  child: ListTile(
                    title: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Color.fromRGBO(
                            7, 67, 49, 1), // Adjusted color range
                        fontSize: 18,
                      ),
                    ),
                    leading: Icon(
                      Icons.login,
                      color:
                          Color.fromRGBO(7, 67, 49, 1), // Adjusted color range
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (ModalRoute.of(context)?.settings.name !=
                        '/Sign_up_page') {
                      Navigator.of(context).pushNamed('/Sign_up_page');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the button background color
                  ),
                  child: ListTile(
                    title: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color.fromRGBO(
                            7, 67, 49, 1), // Adjusted color range
                        fontSize: 18,
                      ),
                    ),
                    leading: Icon(
                      Icons.person_add,
                      color:
                          Color.fromRGBO(7, 67, 49, 1), // Adjusted color range
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Akademi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AkademiPage()),
              );
            },
          ),
          ListTile(
            title: Text('Hakkımızda'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HakkimizdaPage()),
              );
            },
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}
