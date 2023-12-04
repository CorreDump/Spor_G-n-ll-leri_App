import 'package:flutter/material.dart';

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
                    // Handle "Giriş Yap" button click
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the button background color
                  ),
                  child: ListTile(
                    title: Text(
                      'Giriş Yap',
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
                    // Handle "Üye Ol" button click
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the button background color
                  ),
                  child: ListTile(
                    title: Text(
                      'Üye Ol',
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
              // Handle drawer item click
            },
          ),
          ListTile(
            title: Text('Hakkımızda'),
            onTap: () {
              // Handle drawer item click
            },
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}
