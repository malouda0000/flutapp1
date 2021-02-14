import 'package:flutapp1/products.dart';
import 'package:flutter/material.dart';

class ProductsManager extends StatefulWidget {
  @override
  _ProductsManagerState createState() => _ProductsManagerState();
}

class _ProductsManagerState extends State<ProductsManager> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('advanced food tester');
              });
            },
            child: Text('AddProduct'),
          ),
        ),
        Product
      ],
    );
  }
}
