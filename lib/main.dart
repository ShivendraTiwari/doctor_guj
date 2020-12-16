import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LogIn/LogIn.dart';
import 'LogIn/util/login_util.dart';
import 'homePage/homePage.dart';

Future<dynamic> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var user = prefs.getString('user');

  // print(email);
  // if (email == null) {
  //   HomePage();
  // }
  //runApp(MaterialApp(home: email == null ? HomePage() : mainFunction()));
  //runApp(MaterialApp(home: email == null ? HomePage() : mainFunction()));
  runApp(MaterialApp(home: user == null ? SignIn() : HomePage()));
  //     SharedPreferences prefs =
  //     await SharedPreferences.getInstance();
  //     prefs.setString('user', 'api');
  // Navigator.pushAndRemoveUntil(
  //     context,
  //     MaterialPageRoute(
  //     builder: (context) => MainHomePage()),
}

mainFunction() {
  LoginUtil.userLogin("demo", "demo");
  return HomePage();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignIn(),
    );
  }
}
