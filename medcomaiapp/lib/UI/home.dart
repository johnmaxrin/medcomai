import 'package:flutter/material.dart';
import 'package:medcomaiapp/UI/feedpage.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
         child: Center(child: GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedPage()));
           },
                    child: Container(
             height: 50,
             width: 100,
             decoration: new BoxDecoration(
               color: Colors.redAccent,
               borderRadius: BorderRadius.circular(20)
             ),
             
             child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white),),
             
           )),
         ),
      ),
    ));
  }
}