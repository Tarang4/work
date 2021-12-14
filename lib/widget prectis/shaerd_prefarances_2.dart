import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:work/model/shared_preferences_modal.dart';

class SharedPreferencesDemo1 extends StatefulWidget {
  const SharedPreferencesDemo1({Key? key}) : super(key: key);

  @override
  _SharedPreferencesDemo1State createState() => _SharedPreferencesDemo1State();
}

class _SharedPreferencesDemo1State extends State<SharedPreferencesDemo1> {
  var _selectGender = Gender.FEMALE;
  final _selectPrograming = Set<Programing>();
  bool _isStudent = false;
  final preferencesService= SharedPreferenceService;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            RadioListTile(
                title: Text("female"),
                value: Gender.FEMALE,
                groupValue: _selectGender,
                onChanged: (newValue) {
                  setState(() {
                    _selectGender = Gender.FEMALE;
                  });
                }),
            RadioListTile(
                title: Text("male"),
                value: Gender.MALE,
                groupValue: _selectGender,
                onChanged: (Value) {
                  setState(() {
                    _selectGender = Gender.MALE;
                  });
                }),
            RadioListTile(
                title: Text("other"),
                value: Gender.OTHER,
                groupValue: _selectGender,
                onChanged: (Value) {
                  setState(() {
                    _selectGender = Gender.OTHER;
                  });
                }),
            CheckboxListTile(
              title: Text("dart"),
              value: _selectPrograming.contains(Programing.DART),
              onChanged: (value) {
                setState(() {
                  _selectPrograming.contains(Programing.DART)
                      ? _selectPrograming.remove(Programing.DART)
                      : _selectPrograming.add(Programing.DART);
                });
              },
            ),
            CheckboxListTile(
              title: Text("java"),
              value: _selectPrograming.contains(Programing.JAVA),
              onChanged: (value) {
                setState(() {
                  _selectPrograming.contains(Programing.JAVA)
                      ? _selectPrograming.remove(Programing.JAVA)
                      : _selectPrograming.add(Programing.JAVA);
                });
              },
            ),
            CheckboxListTile(
              title: Text("python"),
              value: _selectPrograming.contains(Programing.PYTHON),
              onChanged: (value) {
                setState(() {
                  _selectPrograming.contains(Programing.PYTHON)
                      ? _selectPrograming.remove(Programing.PYTHON)
                      : _selectPrograming.add(Programing.PYTHON);
                });
              },
            ),
            CheckboxListTile(
              title: Text("php"),
              value: _selectPrograming.contains(Programing.PHP),
              onChanged: (value) {
                setState(() {
                  _selectPrograming.contains(Programing.PHP)
                      ? _selectPrograming.remove(Programing.PHP)
                      : _selectPrograming.add(Programing.PHP);
                });
              },
            ),
            SwitchListTile(
                title: Text("Student or not"),
                value: _isStudent,
                onChanged: (value) {
                  setState(() {
                    _isStudent = value;
                  });
                }),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  saveSetting();

                },
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void saveSetting() {
    final newSetting = Setting(
        gender: _selectGender,
        isStudent: _isStudent,
        programing: _selectPrograming);
    print(newSetting);
    print("hhhs");

  }
}

class SharedPreferenceService {
  Future<void> saveSettings(Setting setting) async {
    final preference = await SharedPreferences.getInstance();
    preference.setBool('isStudent', setting.isStudent);
    preference.setInt('gender', setting.gender.index);
    preference.setStringList('programing',
        setting.programing.map((e) => e.index.toString()).toList());
    print("save setting");
  }
  getSetting(Setting setting) async {
    final preference = await SharedPreferences.getInstance();
    final isStudent= preference.getBool("isStudent");
    final programing= preference.getStringList("programing");
    final gender= preference.getInt("gender");


  }
}
