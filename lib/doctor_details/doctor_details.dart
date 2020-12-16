import 'package:doctor_guj/stella%20khan/stella_khan.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  TextEditingController mobileController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Container(
                margin: EdgeInsets.only(top: 140, left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find your Desired\n Doctor",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 120),
                      height: 60,
                      child: TextField(
                        controller: mobileController,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Search for doctors",
                            labelStyle: TextStyle(color: Colors.black),
                            focusColor: Colors.transparent,
                            fillColor: Colors.grey.shade200,
                            border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    new BorderSide(color: Colors.white))),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Text(
                        "Top Doctors",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 20),
                    // ListView.builder(
                    //     itemCount: 5,
                    //     itemBuilder: (BuildContext context, int index) {
                    //return
                    Card(
                        margin: EdgeInsets.fromLTRB(0, 0, 35, 5),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: Colors.cyan.shade100,
                        child: ClipRRect(
                            child: ListTile(
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/doctor.jpg"),
                          ),
                          // leading: Container(
                          //     child: Image.asset("assets/doctor.jpg")),
                          title: Text(
                            "${"Dr.Stella Kane"}",
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          subtitle: Text(
                            "Heart Surgeon-Flower Hospital",
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StellaDetails()));
                          },
                        ))),

                    Card(
                        margin: EdgeInsets.fromLTRB(0, 0, 35, 5),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: Colors.yellow.shade50,
                        child: ClipRRect(
                            child: ListTile(
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/doctor.jpg"),
                          ),
                          // leading: Container(
                          //     child: Image.asset("assets/doctor.jpg")),
                          title: Text(
                            "${"Dr.Samuel"}",
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          subtitle: Text(
                            "Dental Surgeon-Flower Hospital",
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          onTap: () {},
                        ))),
                    Card(
                        margin: EdgeInsets.fromLTRB(0, 0, 35, 5),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: ClipRRect(
                            child: ListTile(
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/doctor.jpg"),
                          ),
                          // leading: Container(
                          //     child: Image.asset("assets/doctor.jpg")),
                          title: Text(
                            "${"Dr.Samuel"}",
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          subtitle: Text(
                            "Physiotherapist-Flower Hospital",
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          onTap: () {},
                        )))
                  ],
                ))));
  }
}
