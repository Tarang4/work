import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'splesh_screen.dart';

class HomePagee extends StatefulWidget {
  final  uName;
  final  uPass;

  const HomePagee({Key? key,  this.uName,  this.uPass})
      : super(key: key);

  @override
  _HomePageeState createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  late SharedPreferences _preferences;
  String userName = '';
  String userNamee = '';
  String userPassword = '';
  String userPasswordd = '';

  delete() {
    _preferences.remove(userName);
    _preferences.remove(userPassword);
    userNamee = "";
    userPasswordd = "";
    setState(() {});
  }

  retrieve() async {
    _preferences = await SharedPreferences.getInstance();
    userNamee = _preferences.getString(userName)!;
    userPasswordd = _preferences.getString(userPassword)!;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName = widget.uName;
    userPassword = widget.uPass;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(userNamee),
            Text(userPasswordd),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {
              delete();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SpleshScreen()));

            }, child: Text("log out")),
            TextButton(onPressed: () {
              retrieve();
            }, child: Text("retrieve")),

          ],
        ),
      ),
    );
  }
}
