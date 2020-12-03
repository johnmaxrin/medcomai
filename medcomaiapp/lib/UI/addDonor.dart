import 'package:flutter/material.dart';

class AddDonor extends StatefulWidget {
  AddDonor({Key key}) : super(key: key);

  _AddDonorState createState() => _AddDonorState();
}

class _AddDonorState extends State<AddDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Become a Donor',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                decoration: new BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Name',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                decoration: new BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Phone',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                decoration: new BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Blood Group',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                decoration: new BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Age',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                decoration: new BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'District',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),

              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.file_upload,size: 30,color: Colors.red,),
                    Icon(Icons.add_circle,size: 30,color: Colors.blueAccent,),
                   
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
