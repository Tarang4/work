import 'package:flutter/material.dart';

class WellcomeSecond extends StatefulWidget {
  final int? index;
  final String? img;

  const WellcomeSecond({Key? key, this.index = 0, this.img}) : super(key: key);

  @override
  _WellcomeSecondState createState() => _WellcomeSecondState();
}

class _WellcomeSecondState extends State<WellcomeSecond> {
  @override
  String? image;
  int index = 0;

  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      image = widget.img;
      index = widget.index ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index==0?Container(
        child: Column(
          children: List.generate(
              5,
              (index) => Container(
                    color: Colors.green,
                    height: 100,
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    width: 100,
                    child: Text(
                      "page no:${index + 1}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
        ),
      ):Container(
        child: Column(
          children: List.generate(
              5,
                  (index) => Container(
                color: Colors.blue,
                height: 100,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                width: 100,
                child: Text(
                  "page no:${index + 1}",
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
        ),
      ),
    );
  }
}
