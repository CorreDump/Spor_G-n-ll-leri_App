import 'package:flutter/material.dart';

class My_Appbar extends StatelessWidget implements PreferredSizeWidget {
  const My_Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
