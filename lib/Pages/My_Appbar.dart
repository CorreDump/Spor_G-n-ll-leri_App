import 'package:flutter/material.dart';

class My_Appbar extends StatelessWidget implements PreferredSizeWidget {
  const My_Appbar({Key? key}) : super(key: key); // Fix super.key

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(7, 67, 49, 1), // Adjusted color range
      centerTitle: true,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
