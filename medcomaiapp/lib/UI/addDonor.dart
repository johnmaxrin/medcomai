import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class AddDonor extends StatefulWidget {
  AddDonor({Key key}) : super(key: key);

  _AddDonorState createState() => _AddDonorState();
}

class _AddDonorState extends State<AddDonor> {
  bool isFilled;

  final name = TextEditingController();
  final phone = TextEditingController();
  final bloodgp = TextEditingController();
  final age = TextEditingController();
  final district = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    isFilled = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                    SizedBox(
                      width: 320,
                        child: TextField(
                          controller: name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.supervised_user_circle),
                          labelText: 'Name',
                        ),
                      ),
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
                    SizedBox(
                      width: 320,
                        child: TextField(
                          controller: phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone),
                          labelText: 'Phone',
                        ),
                      ),
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
                    SizedBox(
                      width: 320,
                        child: TextField(
                          controller: bloodgp,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.pin_drop),
                          labelText: 'Blood Group',
                        ),
                      ),
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
                    SizedBox(
                      width: 320,
                        child: TextField(
                          controller: age,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.confirmation_number),
                          labelText: 'Age',
                        ),
                      ),
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
                    SizedBox(
                      width: 320,
                        child: TextField(
                          controller: district,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.map),
                          labelText: 'District',
                        ),
                      ),
                    )
                  ]),
              ),
              SizedBox(height: 15),
              Container(
                height: 60,
                width: 320,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        
                        // Upload ()
                        
                        

                      },
                                          child: Icon(
                        Icons.file_upload,
                        size: 40,
                        color: Colors.red,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                           if(name.text!='' && phone.text!='' && district.text!='' && age.text!='' && bloodgp.text!='')
                        {
                          setState(() {
                            isFilled = true;
                          });

                          
                        }

                        else{
                          print('All fields are important');
                        }

                        if(isFilled){
                          CollectionReference users = FirebaseFirestore.instance.collection('user');// Zent to DB in Future.
                           users.add({'name':name.text,'phone':phone.text,'district':district.text,'age':age.text,'bloodgp':bloodgp.text});
                        }
                        },
                        child: Icon(
                          Icons.done,
                          size: 40,
                          color: Colors.blue,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
