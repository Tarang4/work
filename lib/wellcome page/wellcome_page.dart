import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/model/colors.dart';
import 'package:work/wellcome%20page/modal/text_modal.dart';
import 'package:work/wellcome%20page/wellcome_second.dart';
import 'package:work/wellcome%20page/widget/app_button.dart';
import 'package:work/wellcome%20page/widget/app_large_text.dart';

class WellomePage extends StatefulWidget {
  const WellomePage({Key? key}) : super(key: key);

  @override
  _WellomePageState createState() => _WellomePageState();
}

class _WellomePageState extends State<WellomePage> {
  List image = ['one.jpg', 'five.jpg', 'seven.jpg', 'six.jpg'];
  List<TextModal> textModal = [
    TextModal(
        bText: "Have A",
        mText: "Good Day",
        sText: "Showing results for good morning good mornig image"),
    TextModal(
        bText: "Good",
        mText: "Afternoon",
        sText: "Showing results for good morning good mornig image"),
    TextModal(
        bText: "Good",
        mText: "Evening",
        sText: "Showing results for good morning good mornig image"),
    TextModal(
        bText: "Good",
        mText: "Morning",
        sText: "Showing results for good morning good mornig image"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: image.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/wellcome/" + image[index]),
                    fit: BoxFit.cover)),
            child: Container(
              margin: EdgeInsets.only(top: 150, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: textModal[index].bText,
                        color: Colors.black,
                        size: 36,
                        weight: FontWeight.w600,
                      ),
                      AppLargeText(
                        text: textModal[index].mText,
                        color: Colors.black.withOpacity(0.8),
                        size: 30,
                        weight: FontWeight.w400,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 230,
                        child: AppLargeText(
                          text: textModal[index].sText,
                          color: Colors.black.withOpacity(0.6),
                          size: 17,
                          weight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                       WellcomeSecond(index: index,img: image[index],)));
                        },
                        child: AppButton(
                          color: Colors.blue.withOpacity(0.6),
                          width: 100,
                          iconn: Icons.arrow_forward_ios_sharp,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: List.generate(
                      4,
                      (indexScroll) => Container(
                        height: image[index] == image[indexScroll] ? 20 : 6,
                        margin: EdgeInsets.all(2),
                        width: 6,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
