import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class SearchFieldDemo extends StatefulWidget {
  const SearchFieldDemo({Key? key}) : super(key: key);

  @override
  _SearchFieldDemoState createState() => _SearchFieldDemoState();
}

class _SearchFieldDemoState extends State<SearchFieldDemo> {
  String? _selectName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: const Text(
                    "select your name",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: SearchField(
                      hint: "search",
                      searchInputDecoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.withOpacity(0.7), width: 2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      itemHeight: 50,
                      maxSuggestionsInViewPort: 5,
                      suggestionsDecoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      onTap: (value) {
                        setState(() {
                          _selectName = value;
                        });
                      },
                      suggestions: const [
                        'tarang',
                        'hello',
                        'brother',
                        'hemyy',
                        'helly',
                        'taranm',
                        'tarha',
                        'hoy',
                        'utsav',
                        'krenil',
                        'aniket',
                        'ramani',
                        'harsh',
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey.withOpacity(0.2),
                  height: 70,padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      _selectName == null
                          ? const Text(
                              "please select name",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w200),
                            )
                          : Text(
                              _selectName!,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
