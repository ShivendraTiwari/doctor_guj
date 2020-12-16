import 'package:doctor_guj/doctor_details/doctor_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 40),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Choose The Doctor \n you want",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          SizedBox(
            height: 20,
          ),
          Text("Το Lorem Ipsum είναι απλά \nένα κείμενο χωρίς "),
          SizedBox(
            height: 30,
          ),
          Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent),
              child: new FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorDetails()));
                  },
                  child: Text("Get Started",
                      style: TextStyle(color: Colors.white))))
        ],
      )),
    ));
  }
}
