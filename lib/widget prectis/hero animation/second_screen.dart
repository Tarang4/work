import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final int index;
  final String imagePath;

  const SecondScreen({Key? key, this.index = 0, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "image$index",
              child: Image.asset(
                imagePath,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Hero(
              tag: "item$index",
              child: Material(
                color: Colors.transparent,
                child: Text(
                  "item ${index + 1} ",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
