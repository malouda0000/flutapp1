// import 'package:flutapp1_1/the_bottom_navigation.dart';
import 'package:flutapp1_1/screens/menu_container.dart';
import 'package:flutapp1_1/screens/new_course_test.dart';
import 'package:flutter/material.dart';

import 'my_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int theCurrentIndex = 0;
  final tabs = [
    // HomeScreen(),
    MenuContainer(),
    TestingRandom(),
    Center(child: Text('camera', style: TextStyle(fontSize: 50)))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('whats up'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.storage),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            color: Colors.red,
            onPressed: () {},
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Container(
        child: tabs[theCurrentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        hoverColor: Colors.yellow,
        child: Icon(
          Icons.account_balance_wallet,
        ),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: theCurrentIndex,
        type: BottomNavigationBarType.fixed,
        // iconSize: 30,
        onTap: (index) {
          setState(() {
            theCurrentIndex = index;
          });
        },
        items: [
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   title: Text('home'),
          //   // backgroundColor: Colors.yellow,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text('camera'),
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('profile'),
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('settings'),
            // backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
