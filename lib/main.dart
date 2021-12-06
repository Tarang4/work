import 'package:flutter/material.dart';
import 'package:work/model/list_modal.dart';
import 'package:work/tarang.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ListModal> widgetName = [
    ListModal(name: "tarang",page:""),
    ListModal(name: "utsav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widgetName.length,
        itemBuilder: (BuildContext context, int index) {
          ListModal listModal = widgetName[index];
          return InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Trang()));
            } ,
            child: Container(
              decoration: const BoxDecoration(color: Colors.orange),
              height: 50,
              width: 200,
              alignment: Alignment.center,
              margin:
                  const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 15),
              child: Text(
                listModal.name ?? "",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
