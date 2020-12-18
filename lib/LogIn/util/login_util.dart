// import 'dart:convert';
//
//
import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginUtil {
  bool _isLoading = false;
  static Future userLogin(id, password) async {
    //static Future userLogin(id, password) async {
    // setState(() {
    //   _isLoading = true;
    // });
    // String username = userNameController.text;
    // String password = passwordController.text;
    // String api_key = "2299b-80959-b605d-f17d6-59187-da01f";
    //String username = "demo";
    //String password = "demo";
    {
      // SharedPreferences sharedPreferences =
      //     await SharedPreferences.getInstance();
      Map data = {
        'username': id,
        'password': password,
        //'api_key': api_key,
      };
      // var jsonResponse = null;
      var url = "https://slbs21.luckbyspin.in/API/LoginDemo";
      var response = await http.post(
        url,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
        body: data,
        encoding: Encoding.getByName("utf-8"),
      );
      var jsonResponse = jsonDecode(response.body);
      //print(response.body.toString());
      print("dsdsdsdsd $jsonResponse");
      //jsonResponse = json.decode(response.body);
      if (jsonResponse['message'] == "Login successfully") {
        print(jsonResponse);

        // setState(() {
        //   _isLoading = false;
        //
        // });
        // GlobalData.key = jsonResponse['key'];
        // print("Global Key ${GlobalData.key}");
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (BuildContext context) => HomePage()));
      } else {
        // setState(() {
        //   _isLoading = false;
        // });
        print(response.body);
      }
    }
  }
}
