import 'package:flutter/material.dart';
import 'package:market_news/constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Column(
            children: [
              Icon(
                Icons.person,
                size: 40,
              ),
              Text(
                'Akhil',
                style: kAppTitleStyle,
              ),
              Text('9495248085')
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.black38,
          ),
        ),
        ListTile(
            title: Row(
              children: [
                Icon(Icons.bookmark),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('My Bookmarks'),
                )
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            }),
        ListTile(
            title: Row(
              children: [
                Icon(Icons.notifications),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Notifications'),
                )
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            }),
        ListTile(
            title: Row(
              children: [
                Icon(Icons.people),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('About US'),
                )
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            }),
        ListTile(
            title: Row(
              children: [
                Icon(Icons.lock),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Privacy Policy'),
                )
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            }),
        ListTile(
            title: Row(
              children: [
                Icon(Icons.logout),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Logout',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            }),
      ],
    ));
  }
}
