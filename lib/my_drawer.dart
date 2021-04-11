import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Malouda'),
            accountEmail: Text('hummam.hamza85@gamil.com'),
            currentAccountPicture: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 40,
              ),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: Icon(
                  Icons.add,
                ),
              ),
              CircleAvatar(
                child: Icon(
                  Icons.save,
                ),
              ),
              CircleAvatar(
                child: Icon(
                  Icons.whatshot,
                ),
              ),
            ],
          ),
          ListTile(
            title: Text('damn boy'),
            subtitle: Text('whats up pro'),
            leading: Icon(Icons.send),
            onTap: () {},
          ),
          ListTile(
            title: Text('damn boy'),
            subtitle: Text('whats up pro'),
            leading: Icon(Icons.send),
            onTap: () {},
          ),
          ListTile(
            title: Text('damn boy'),
            subtitle: Text('whats up pro'),
            leading: Icon(Icons.send),
            onTap: () {},
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            trailing: Icon(Icons.settings),
            title: Text('settings'),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.feedback),
            title: Text('about us'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
