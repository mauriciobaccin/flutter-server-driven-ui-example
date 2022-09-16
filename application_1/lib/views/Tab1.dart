import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const SizedBox(height: 20),
            const FlutterLogo(size: 80),
            const SizedBox(height: 30),
            const TextField(
                decoration: InputDecoration(
                    hintText: 'Name', border: OutlineInputBorder())),
            const SizedBox(height: 10),
            const TextField(
                decoration: InputDecoration(
                    hintText: 'Email', border: OutlineInputBorder())),
            const SizedBox(height: 10),
            const TextField(
                decoration: InputDecoration(
                    hintText: 'Password', border: OutlineInputBorder())),
            const SizedBox(height: 10),
            MaterialButton(
                minWidth: double.infinity,
                onPressed: () {},
                child:
                    const Text('SignUp', style: TextStyle(color: Colors.white)),
                color: Colors.blue),
          ])));
}
