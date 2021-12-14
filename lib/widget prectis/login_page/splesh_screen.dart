import 'dart:async';

import 'package:flutter/material.dart';
import 'package:work/widget%20prectis/login_page/home_page.dart';
import 'package:work/widget%20prectis/loginpage_sharedpreferances.dart';

import 'login_page.dart';
import 'modal.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  _SpleshScreenState createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  late bool valuee;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => LoginPageSharedPreference()));


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(child: Image.asset("asset/images/wellcome/spotify-logo-png-7078.png",width: 150,height: 150,)),
        )
    );
  }
}
