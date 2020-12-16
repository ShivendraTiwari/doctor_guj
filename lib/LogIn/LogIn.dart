import 'package:doctor_guj/LogIn/util/login_util.dart';
import 'package:doctor_guj/homePage/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var user = preferences.getString('user');
  runApp(SignIn());
}

class SignIn extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SignIn> {
  bool visible = false;
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    //SignUpUtil.userSignUp();

    super.initState();
  }

  String user = "demo";
  String password = "demo";

  //String confirmP = "demo";

  final _formKey = GlobalKey<FormState>();
  final image = [
    //["assets/gaming4.jpg", "CALL OF DUTY"],
  ];
  String dropdownValue = 'One';

  //List<ModelProfile> modelList = new List();

  // List<String> spinnerItems = ['One', 'Two', 'Three', 'Four', 'Five'];
  bool isTextFiledFocus = false;
  bool isSwitched = false;
  bool loginError = false;

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  static const Color button = Color(0xFFFeedb07);
  int _value = 1;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      //fit: StackFit.expand,
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/doctor.jpg')))),
        Container(
            //height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Expanded(child: Container()),
                  SizedBox(
                    height: 80,
                  ),
                  Card(
                      elevation: 5,
                      //color: Colors.white.withOpacity(0.6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text("Register",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25)),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Form(
                              key: _formKey,
                              child: Column(children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: 120,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("UserName"),
                                          SizedBox(height: 10),
                                          TextFormField(
                                              controller: usernameController,
                                              decoration: InputDecoration(
                                                  hintText: "Enter your email",
                                                  labelStyle: new TextStyle(
                                                      color:
                                                          Colors.deepPurple)),
                                              validator: (value) {
                                                if (value.isEmpty) {
                                                  return "username is required";
                                                }
                                                if (value != 'demo') {
                                                  return "username doesn't match";
                                                }
                                              }),
                                        ])),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: 120,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Password"),
                                          SizedBox(height: 10),
                                          TextFormField(
                                              controller: passwordController,
                                              decoration: InputDecoration(
                                                  hintText:
                                                      "Enter your password",
                                                  labelStyle: new TextStyle(
                                                      color:
                                                          Colors.deepPurple)),
                                              obscureText: true,
                                              validator: (value) {
                                                if (value.isEmpty) {
                                                  return "username is required";
                                                }
                                                if (value != 'demo') {
                                                  return "username doesn't match";
                                                }
                                              }),
                                        ])),
                                SizedBox(height: 10),
                                // Container(
                                //   margin: EdgeInsets.only(left: 20, right: 20),
                                //   height: 40,
                                //   child: TextField(
                                //     controller: confirmPasswordController,
                                //     decoration: InputDecoration(
                                //         filled: true,
                                //         labelText: "Enter Email Id",
                                //         labelStyle:
                                //             TextStyle(color: Colors.black),
                                //         focusColor: Colors.transparent,
                                //         fillColor: Colors.white,
                                //         border: new OutlineInputBorder(
                                //             borderRadius:
                                //                 BorderRadius.circular(5),
                                //             borderSide: new BorderSide(
                                //                 color: Colors.grey))),
                                //   ),
                                // ),
                                SizedBox(height: 10),
                              ]),
                            ),

                            //),
                            SizedBox(height: 15),
                            // Container(
                            //     child: new RaisedButton(
                            //         onPressed: () {
                            //           Navigator.push(
                            //               context,
                            //               MaterialPageRoute(
                            //                   builder: (context) => HomePage()));
                            //         },
                            //         child: Text(
                            //           "ALREADY REGISTERED?",
                            //           style: TextStyle(
                            //               color: Colors.black,
                            //               fontSize: 15,
                            //               fontWeight: FontWeight.w400),
                            //           textAlign: TextAlign.end,
                            //         ))),
                            SizedBox(height: 20),
                            Container(
                                margin: EdgeInsets.only(left: 120, right: 120),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.2)),
                                child: FlatButton(
                                    onPressed: () async {
                                      // if (_formKey.currentState.validate()) {
                                      //   showDialog(
                                      //       context: context,
                                      //       barrierDismissible: false,
                                      //       builder: (BuildContext context) =>
                                      //           new CupertinoAlertDialog(
                                      //             title: new Center(
                                      //               child:
                                      //                   CircularProgressIndicator(),
                                      //             ),
                                      //           ));
                                      if (_formKey.currentState.validate()) {
                                        showDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) =>
                                                new CupertinoAlertDialog(
                                                  title: new Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  ),
                                                ));
                                        await LoginUtil.userLogin(
                                            usernameController.text,
                                            passwordController.text);
                                        Navigator.of(context).pop();
                                        SharedPreferences prefs =
                                            await SharedPreferences
                                                .getInstance();
                                        prefs.setString('user', 'demo');
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()),
                                            (route) => false);
                                      }

                                      //Navigator.of(context).pop();
                                      // (route) => false);
                                      //  }
                                    },
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.arrow_forward),
                                          Text(
                                            "SignIn",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ])))
                          ])),
                ])),
      ],
    ));
  }
}
