import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MenuContainer extends StatefulWidget {
  @override
  _MenuContainerState createState() => _MenuContainerState();
}

class _MenuContainerState extends State<MenuContainer> {
  int index = 0;
  var selctedIndex = 0;
  final List<String> categores = [
    'sing in',
    'home',
    'settings',
    'about us',
    'feedback'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categores.length,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selctedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Text(
                  categores[index],
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color:
                        index == selctedIndex ? Colors.white : Colors.white70,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
