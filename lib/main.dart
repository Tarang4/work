import 'package:flutter/material.dart';
import 'package:work/model/list_modal.dart';
import 'package:work/sharedpreferences_demo.dart';
import 'package:work/wellcome%20page/wellcome_page.dart';
import 'package:work/widget%20prectis/camara_gallery.dart';
import 'package:work/widget%20prectis/hero%20animation/hero_animation.dart';
import 'package:work/widget%20prectis/hero%20animation/screen1.dart';
import 'package:work/widget%20prectis/indexed_stack.dart';
import 'package:work/widget%20prectis/login_page/splesh_screen.dart';
import 'package:work/widget%20prectis/loginpage_sharedpreferances.dart';
import 'package:work/widget%20prectis/search_field.dart';
import 'package:work/widget%20prectis/shaerd_prefarances_2.dart';

import 'widget prectis/instagram_search_field.dart';
import 'widget prectis/login_page/login_page.dart';

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
    ListModal(name: "tarang",),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ListView.builder(
            //   itemCount: widgetName.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     ListModal listModal = widgetName[index];
            //     return InkWell(
            //       onTap: () {
            //
            //       },
            //       child: Container(
            //         decoration: const BoxDecoration(color: Colors.orange),
            //         height: 50,
            //         width: 200,
            //         alignment: Alignment.center,
            //         margin: const EdgeInsets.only(
            //             left: 15, right: 15, bottom: 10, top: 15),
            //         child: Text(
            //           listModal.name ?? "",
            //           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     );
            //   },
            // ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SearchFieldDemo()));
              }, child: const Text("Search bar",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InstagramSearchField()));
              }, child: const Text("Instagram Search bar",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WellomePage()));
              }, child: const Text("slider screen ",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const HeroAnimation()));
              }, child: const Text("hero animation ",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const CameraGallery()));
              }, child: const Text("camera and gallery ",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const IndexedStackDemo()));
              }, child: const Text("Indexed Stack Demo",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const SharedPreferencesDemo()));
              }, child: const Text("Shared Preferences Demo",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const LoginPage()));
              }, child: const Text("Shared Preferences login",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const SharedPreferencesDemo1()));
              }, child: const Text("Shared Preferences demo 2",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const SpleshScreen()));
              }, child: const Text("login page",style: TextStyle(fontSize: 22,color: Colors.black),),),
            ),
          ],
        ),
      ),
    );
  }
}
