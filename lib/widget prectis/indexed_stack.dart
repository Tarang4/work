import 'dart:math';

import 'package:flutter/material.dart';

class IndexedStackDemo extends StatefulWidget {
  const IndexedStackDemo({Key? key}) : super(key: key);

  @override
  _IndexedStackDemoState createState() => _IndexedStackDemoState();
}

class _IndexedStackDemoState extends State<IndexedStackDemo> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          IndexedStack(
            index: index,
            children: [
              Container(
                height: 200,width: double.infinity,
                padding: EdgeInsets.all(40),
                color: Colors.green,
                child: const Text(
                  "0",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                color: Colors.red,
                child: const Text(
                  "1",
                  style:  TextStyle(fontSize: 50),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                color: Colors.blue,
                child: const Text(
                  "2",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                color: Colors.pink,
                child: const Text(
                  "3",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (indexBtn) => GestureDetector(
                onTap: () {
                  // setState(() {
                  //   if (indexbtn == index) {
                  setState(() {
                    if (indexBtn == 0) {
                      index = 0;
                    }
                    if (indexBtn == 1) {
                      index = 1;
                    }

                    if (indexBtn == 2) {
                      index = 2;
                    }

                    if (indexBtn == 3) {
                      index = 3;
                    }
                  });
                },
                child: Container(
                  color: Colors.grey,
                  height: 50,
                  width: 70,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 6, right: 6, top: 35),
                  child: Text("no.${indexBtn}"),
                ),
              ),
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (index == 3) {
              index = 0;
            } else {
              index = index + 1;
            }
          });
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
