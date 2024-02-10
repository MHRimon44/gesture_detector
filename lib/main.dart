// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'GestureDetector Widget',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector Widget'),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Hello');
        var snackBar = SnackBar(content: Text('Hello'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        height: 50,
        width: 100,
        alignment: Alignment.center,
        child: Text('hi'),
      ),
    );
  }
}
