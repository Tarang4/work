import 'package:flutter/material.dart';
import 'package:work/widget%20prectis/hero%20animation/hero_modal.dart';
import 'package:work/widget%20prectis/hero%20animation/second_screen.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  _HeroAnimationState createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  List<HeroModal> imgList = [
    HeroModal(img: "asset/images/wellcome/two.jpg", itemName: "item 1"),
    HeroModal(img: "asset/images/wellcome/two.jpg", itemName: "item 1"),
    HeroModal(img: "asset/images/wellcome/one.jpg", itemName: "items "),
    HeroModal(img: "asset/images/wellcome/seven.jpg", itemName: "item "),
    HeroModal(img: "asset/images/wellcome/four.jpg", itemName: "item "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 25, left: 15, right: 15),
          child: ListView.builder(
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) {
              HeroModal heromodal = imgList[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen(
                                  imagePath: heromodal.img ?? "",
                                  index: index,
                                )));
                  },
                  child: Row(
                    children: [
                      Hero(
                        tag: "image$index",
                        child: Image1(img: heromodal.img),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Hero(
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
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Image1({String? img}) {
    return Image.asset(
      img!,
      fit: BoxFit.cover,
      height: 110,
      width: 110,
    );
  }
}
