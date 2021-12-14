import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:work/main.dart';
import 'package:work/widget%20prectis/login_page/modal.dart';

import 'home_page.dart';

class LoginPageSharedPreference extends StatefulWidget {
  const LoginPageSharedPreference({Key? key}) : super(key: key);

  @override
  _LoginPageSharedPreferenceState createState() =>
      _LoginPageSharedPreferenceState();
}

class _LoginPageSharedPreferenceState extends State<LoginPageSharedPreference> {
  TextEditingController loginController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  Color _iconColor = Colors.green;
  String uName = "";
  String uPassword = "";
  String userName = 'usernamelog';
  String userPassword = 'passwordlog';


  late SharedPreferences prefe;

  save() async {
    prefe = await SharedPreferences.getInstance();
    prefe.setString(userName, loginController.text);
    prefe.setString(userPassword, loginPasswordController.text);
  }

  retrieve() async {
    prefe = await SharedPreferences.getInstance();
    uName = prefe.getString(userName)!;
    uName = prefe.getString(userPassword)!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Form(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 18, right: 18),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email or username",
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 10),
                    width: double.infinity,
                    height: 47,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 20),
                      child: TextFormField(
                        controller: loginController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.white,
                        style: const TextStyle(color: Colors.white, fontSize: 18.8),
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 10),
                    width: double.infinity,
                    height: 47,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 6),
                      child: TextFormField(
                        obscureText: true,
                        controller: loginPasswordController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white, fontSize: 18.8),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _iconColor = Colors.yellow;
                              });
                            },
                            icon: const Icon(
                              Icons.remove_red_eye_sharp,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 120, left: 120),
                    child: InkWell(
                      customBorder: CircleBorder(),
                      onTap: () {
                        if(loginController.text.isNotEmpty&&loginPasswordController.text.isNotEmpty){
                          save();
                          IsLogin(true);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomePagee( uName:userName ,uPass: userPassword,)));
                        }

                      },
                      child: Container(
                        height: 52,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(40)),
                        // padding: EdgeInsets.only(top: 10,bottom: 10,right: 35,left: 35),
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.6),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 100, left: 100),
                    child: InkWell(
                      customBorder: CircleBorder(),
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowData()));
                      },
                      child: Container(
                        height: 27,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(40)),
                        // padding: EdgeInsets.only(top: 10,bottom: 10,right: 35,left: 35),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePagee()));
                          },
                          child: const Text(
                            'Log in without password',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
