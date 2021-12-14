
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDemo extends StatefulWidget {
  const SharedPreferencesDemo({Key? key}) : super(key: key);

  @override
  _SharedPreferencesDemoState createState() => _SharedPreferencesDemoState();
}

class _SharedPreferencesDemoState extends State<SharedPreferencesDemo> {
  late SharedPreferences prefs;
  TextEditingController textController = TextEditingController();
  String name = "";

  // getSharedPreferences() async {
  //   prefs = await SharedPreferences.getInstance();
  // }
  //
  // saveStringValue() async {
  //   prefs = await SharedPreferences.getInstance();
  //   prefs.setString("username", textController.text.toString());
  // }
  //
  // retrieveStringValue() async {
  //   prefs = await SharedPreferences.getInstance();
  //   name = prefs.getString("username")!;
  // }
  // delete() asyn
  //   prefs=await SharedPreferences.getInstance();
  //   prefs.remove("username");
  //   name="";
  // }

  save() async
  {
    prefs = await SharedPreferences.getInstance();
    prefs.setString("username", textController.text.toString());
  }

  retrieve() async{
    prefs = await SharedPreferences.getInstance();
    name = prefs.getString("username")!;
    setState(() {

    });
  }

  delete() async
  {
    prefs = await SharedPreferences.getInstance();
    prefs.remove("username");
    name = "";
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              TextField(
                controller: textController,
                // onChanged: (value) => onchange(value),
                style: TextStyle(color: Colors.grey.shade200),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[850],
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade500,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none),
                    hintStyle:
                        TextStyle(fontSize: 14, color: Colors.grey.shade500),
                    hintText: "Search users"),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        save();
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Text("Save"),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        retrieve();
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Text("retrieve"),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {delete();},
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Text("delete"),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
