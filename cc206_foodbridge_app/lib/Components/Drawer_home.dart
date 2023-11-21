import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Text('DrawerNavigation'),
      endDrawer: Drawer(
        child: ListView(
  children: <Widget>[
    ListTile(
  leading: const Icon(Icons.menu),
  onTap: () {
    Navigator.pushNamed(context, '/DrawerHome');
  },
),
      Column(
       children: [
        Padding(
        padding: const EdgeInsets.only(right: 200),
        child: Text(
        'ailen_w',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
  ],
),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Account'),
              onTap: () {
                Navigator.pushNamed(context, '/Account');
              },
            ),
            ListTile(
              leading: const Icon(Icons.archive),
              title: const Text('Archive'),
              onTap: () {
                Navigator.pushNamed(context, '/Archive');
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications_active),
              title: const Text('Your Activity'),
              onTap: () {
                Navigator.pushNamed(context, '/Your Activity');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Nametag'),
              onTap: () {
                Navigator.pushNamed(context, '/Nametag');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/Settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}
