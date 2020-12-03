import 'package:flutter/material.dart';
import 'package:medcomaiapp/UI/addDonor.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key key}) : super(key: key);

  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  'Search Donor',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.receipt),
                      iconSize: 30,
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddDonor()));
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.settings,
                      size: 30,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white70,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  )
                ],
              ),
            )),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(15),
                height: 250,
                decoration: new BoxDecoration(
                    color: Colors.white70, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80',),
                          fit: BoxFit.cover
                        )
                      ),
                      height: 170,
                      
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 30,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('How to Overcome Obesity?',textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black54),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10,top: 10),
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.thumb_up,color: Colors.blueAccent,),
                          SizedBox(width: 10),
                          Icon(Icons.comment,color: Colors.blueGrey,),
                          SizedBox(width: 10,),
                          Icon(Icons.share,color: Colors.redAccent,),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
