import 'package:flutter/material.dart';

List<Widget> getWidgets(List items) {
  List<Widget> widgets = [];

  items.forEach((item) {
    String type = item.type;

    switch (type) {
      case 'FlutterLogo':
        widgets.add(FlutterLogo(size: item.size));
        break;

      case 'SizedBox':
        widgets.add(SizedBox(height: item.height));
        break;

      case 'TextField':
        widgets.add(TextField(
            obscureText: item.obscure,
            decoration: InputDecoration(
                hintText: item.hint, border: OutlineInputBorder())));
        break;

      case 'MaterialButton':
        widgets.add(MaterialButton(
          onPressed: () {},
          color: Colors.blue,
          minWidth: double.infinity,
          child: Text(item.hint, style: TextStyle(color: Colors.white)),
        ));

        break;
    }
  });

  return widgets;
}
