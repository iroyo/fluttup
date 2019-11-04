import 'package:flutter/material.dart';
import 'package:fluttup/member_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttup',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Montserrat',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Center(
            child: Image.asset(
          'assets/brand.png',
          width: 180,
        )),
      ),
      body: GridView.count(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        children: List.generate(10, (i) {
          return MemberItem(index: i);
        }),
      ),
    );
  }
}
