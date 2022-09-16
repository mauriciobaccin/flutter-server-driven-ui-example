import 'package:flutter/material.dart';

import 'views/Tab1.dart';
import 'views/Tab2.dart';
import 'views/Tab3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
                centerTitle: true,
                bottom: TabBar(tabs: [
                  Tab(text: 'Default'),
                  Tab(text: 'Widget as List'),
                  Tab(text: 'Server')
                ])),
            body: TabBarView(children: [
              Tab1(),
              Tab2(),
              Tab3(),
            ])));
  }
}
