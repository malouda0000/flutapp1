import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('home'),
        ),
        ListTile(
          title: Text('second page'),
        ),
        ListTile(
          title: Text('setting'),
        ),
        ListTile(
          title: Text('about us'),
        ),
      ],
    );
  }
}
