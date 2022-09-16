import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:application_1/services/SignUpService.dart';
import 'package:application_1/models/SignUpWidgets.dart';
import 'package:application_1/render/RenderWidgets.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  State<Tab3> createState() => _Tab3();
}

class _Tab3 extends State<Tab3> {
  List<Widget>? widgets;
  var isLoaded = false;

  getData() async {
    List<SignUpWidgets> signUpWidgets = await SignUpService.getSignUpWidgets();
    developer.log(signUpWidgets.toString());
    if (signUpWidgets != null) {
      setState(() {
        isLoaded = true;
        widgets = getWidgets(signUpWidgets);
      });
    }
  }

  @override
  void initState() {
    super.initState();

    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Visibility(
      visible: isLoaded,
      replacement: const Center(child: CircularProgressIndicator()),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [...widgets ?? []])),
    ));
  }
}
