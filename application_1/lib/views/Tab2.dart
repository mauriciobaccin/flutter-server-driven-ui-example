import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  List<Map<String, dynamic>> listMap = [
    {'type': 'SizedBox', 'height': 20.0},
    {'type': 'FlutterLogo', 'size': 80.0},
    {'type': 'SizedBox', 'height': 30.0},
    {'type': 'TextField', 'hint': 'Name', 'obscure': false},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'Email', 'obscure': false},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'Password', 'obscure': true},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'Confirm Password', 'obscure': true},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'MaterialButton', 'hint': 'SignUp'},
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    listMap.forEach((item) {
      String type = item['type'];

      switch (type) {
        case 'FlutterLogo':
          widgets.add(FlutterLogo(size: item['size']));
          break;

        case 'SizedBox':
          widgets.add(SizedBox(height: item['height']));
          break;

        case 'TextField':
          widgets.add(TextField(
              obscureText: item['obscure'],
              decoration: InputDecoration(
                  hintText: item['hint'], border: OutlineInputBorder())));
          break;

        case 'MaterialButton':
          widgets.add(MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            minWidth: double.infinity,
            child: Text(item['hint'], style: TextStyle(color: Colors.white)),
          ));

          break;
      }
    });

    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [...widgets])));
  }
}
