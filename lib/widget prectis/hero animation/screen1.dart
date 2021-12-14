import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Scree2()));
            },
            child: Hero(
                tag: 'hey',
                child: Image.asset(
                  "asset/images/wellcome/two.jpg",
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}

class Scree2 extends StatelessWidget {
  const Scree2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(25),
            child: Hero(
                tag: 'hey',
                child: Image.asset("asset/images/wellcome/two.jpg")),
          ),
          const Text(
            "hello,guys",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                color: Colors.green),
          )
        ],
      ),
    );
  }
}
