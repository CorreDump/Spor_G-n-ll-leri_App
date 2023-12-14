import 'package:flutter/material.dart';

class My_Appbar extends StatelessWidget implements PreferredSizeWidget {
  const My_Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(7, 67, 49, 1),
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
        NotificationPopupMenu(),
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

class NotificationPopupMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      onSelected: (value) {
        // Handle selected notification action
        // You can navigate to a notifications page or perform other actions
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
        PopupMenuItem<int>(
          value: 0,
          child: ListTile(
            title: Text('Notification 1'),
          ),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: ListTile(
            title: Text('Notification 2'),
          ),
        ),
        // Add more notifications as needed
      ],
      icon: Icon(
        Icons.notifications,
        color: Colors.white,
      ),
    );
  }
}
