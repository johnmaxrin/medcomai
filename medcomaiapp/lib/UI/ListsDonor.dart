import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DonorList extends StatefulWidget {
  final String query;
  DonorList({Key key, this.query}) : super(key: key);

  _DonorListState createState() => _DonorListState();
}

class _DonorListState extends State<DonorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('user').where('district', isEqualTo: widget.query).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return Center(child: new Text("There is no User"));
          
          return new ListView(children: getDonor(snapshot));
        }));
       
  }

  getDonor(AsyncSnapshot<QuerySnapshot> snapshot){
     return snapshot.data.docs
        .map((doc) => new ListTile(title: new Text(doc["name"]), subtitle: new Text(doc["phone"].toString())))
        .toList();
  }
  }
