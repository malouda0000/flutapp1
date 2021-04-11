import 'package:flutter/material.dart';

class TheBody extends StatefulWidget {
  @override
  _TheBodyState createState() => _TheBodyState();
}

class _TheBodyState extends State<TheBody> {
  var changingText = "Change Me";
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  changingText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'name',
                      hintText: 'enter your name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'password',
                      hintText: 'enter your password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        changingText = _nameController.text;
                        setState(() {});
                      },
                      child: Text('Save the name'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        changingText = _passwordController.text;
                        setState(() {});
                      },
                      child: Text('Save password'),
                    ),
                    FlatButton(
                      onPressed: () {
                        changingText = '';
                        setState(() {});
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
