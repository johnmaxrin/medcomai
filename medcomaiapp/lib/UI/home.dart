import 'package:flutter/material.dart';

class home extends StatefulWidget {
  home({Key key}) : super(key: key);

  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(child: Text('Home')),
    );
  }
}