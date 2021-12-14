import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textCantrollerName = TextEditingController();
  TextEditingController textCantrollerPass = TextEditingController();
  TextEditingController textCantrollerPhone = TextEditingController();
  late SharedPreferences preferences;
  late SharedPreferences preferencess;
  String name = "";
  int phone = 0;
  String pass = "";

  savename() async {
    preferences = await SharedPreferences.getInstance();
    preferences.setString("name", textCantrollerName.text.toString());
    preferences.setString("pass", textCantrollerPass.text.toString());
  }

  savePhone() async {
    preferencess = await SharedPreferences.getInstance();
    preferencess.setInt("phone", int.parse(textCantrollerPhone.text));
    print("done");
  }

  retrieveName() async {
    preferences = await SharedPreferences.getInstance();
    name = preferences.getString("name")!;
    pass = preferences.getString("pass")!;
    phone = preferences.getInt("phone")!;

    setState(() {});
  }

  retrievePhone() async {
    preferencess = await SharedPreferences.getInstance();

    setState(() {});
  }

  delete() async {
    preferences = await SharedPreferences.getInstance();
    preferences.remove("name");
    preferences.remove("pass");
    preferences.remove("phone");

    setState(() {
      name = "";
      pass = "";
      phone=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(top: 48.0, left: 15, right: 15),
            child: TextField(
              controller: textCantrollerName,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: textCantrollerPhone,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
            child: TextField(
              controller: textCantrollerPass,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              savename();
              savePhone();
            },
            child: Text("sign up"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              retrieveName();
            },
            child: const Text("retrieve"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              delete();
            },
            child: const Text("delete"),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '${phone}',
            style: TextStyle(fontSize: 23, color: Colors.black),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 23, color: Colors.black),
          ),
          Text(
            pass,
            style: TextStyle(fontSize: 23, color: Colors.black),
          ),
        ]),
      ),
    );
  }
}
