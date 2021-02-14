import 'package:flutapp1/products.dart';
import 'package:flutter/material.dart';

import 'mydrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _CardHome();
  }
}

class _CardHome extends StatefulWidget {
  @override
  _CardHomeState createState() => _CardHomeState();
}

class _CardHomeState extends State<_CardHome> {
  @override
  Widget build(BuildContext context) {
    List<String> _products = ['food tester'];
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: MyDrawer(),
        ),
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: <Widget>[
            Container(),
            Container(
              child: Product,
            )
          ],
        ),
      ),
    );
  }
}
