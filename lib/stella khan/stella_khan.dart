import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StellaDetails extends StatefulWidget {
  @override
  _BeforeAddToCartState createState() => _BeforeAddToCartState();
}

class _BeforeAddToCartState extends State<StellaDetails> {
  final String url =
      "https://zzzmart.com/admin/ecommerce_api/product/product.php?apicall=product_list";
  List data;
  Future future;

  @override
  void initState() {
    // TODO: implement initState
    //ProductList.productList();
    // productList();
    //future = productList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/doctor.jpg"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      )),
                      // child: Container(
                      //  child: Image.asset("assets"),
                      // ),

                      child: Column(children: [
                        // Image.asset(
                        //   "${data[index]['tcat_image']}",
                        //  // "https://zzzmart.com/assets/uploads/slider-2.jpg",
                        //   height: 100,
                        //   width: 100,
                        // ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width * 1.8,
                            //color: Colors.,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 4,
                              // margin: EdgeInsets.only(top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundImage:
                                            AssetImage("assets/doctor.jpg"),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Dr.Stella Khan",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text("Heart Surgeon-Flower Hospital"),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                color: Colors.blueAccent,
                                              ),
                                              SizedBox(width: 10),
                                              Icon(
                                                Icons.message,
                                                color:
                                                    Colors.amberAccent.shade700,
                                              ),
                                              SizedBox(width: 10),
                                              Icon(
                                                Icons.video_call,
                                                color: Colors.amber.shade700,
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 40),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("About Doctor",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15)),
                                            SizedBox(height: 30),
                                            Text(
                                                "Dr.Stella is επαγγελματίες της τυπογραφίας και στοιχειοθεσίας. Το Lorem Ipsum είναι το επαγγελματικό πρότυπο όσον αφορά το κείμενο χωρίς νόημα, από τον 15ο αιώνα, όταν ένας ανώνυμος τυπογράφος πήρε ένα δοκίμιο και ανακάτεψε τις λέξεις για να δημιουργήσει ένα δείγμα βιβλίου. Όχι μόνο επιβίωσε πέντε"),
                                            SizedBox(height: 30),
                                            Text("Upcoming Schedules",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15)),
                                            SizedBox(height: 30),
                                            Card(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 35, 5),
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                color: Colors.blue.shade100,
                                                child: ClipRRect(
                                                    child: ListTile(
                                                  leading: Text(
                                                    "12 Jan",
                                                    style: TextStyle(),
                                                  ),

                                                  // leading: Container(
                                                  //     child: Image.asset("assets/doctor.jpg")),
                                                  title: Text(
                                                    "${"Consultation"}",
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  subtitle: Text(
                                                    "Sunday- 9am-11am",
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 14,
                                                        color: Colors.black),
                                                  ),
                                                  onTap: () {},
                                                ))),
                                            Card(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 35, 5),
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                color: Colors.yellow.shade50,
                                                child: ClipRRect(
                                                    child: ListTile(
                                                  leading: Text(
                                                    "13 Jan",
                                                    style: TextStyle(),
                                                  ),

                                                  // leading: Container(
                                                  //     child: Image.asset("assets/doctor.jpg")),
                                                  title: Text(
                                                    "${"Consultation"}",
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  subtitle: Text(
                                                    "Monday- 9am-11am",
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 14,
                                                        color: Colors.black),
                                                  ),
                                                  onTap: () {},
                                                ))),
                                          ]))
                                ],
                              ),
                            )),
                      ])),
                ],
              );
            }));
  }
}
