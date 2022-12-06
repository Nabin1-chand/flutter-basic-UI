import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideBar extends StatelessWidget {
  const SlideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: const Text('Home',
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            onTap: () {
              print('you clicked');
            },
          ),
          ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: const Text(
                'Contact',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {}),
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.white,
            ),
            title:
                const Text('About Us', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
