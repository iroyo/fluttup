import 'package:flutter/material.dart';
import 'package:fluttup/ui/fluttup_icons.dart';
import 'package:fluttup/ui/members/members.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Members(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluttupIcons.members),
            title: Text('Members'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluttupIcons.activities),
            title: Text('Activity'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluttupIcons.events),
            title: Text('Events'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluttupIcons.chats),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluttupIcons.profile),
            title: Text('Profile'),
          ),
        ],
        currentIndex: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFe01e5a),
        selectedLabelStyle: TextStyle(color: Color(0xFFe01e5a), fontSize: 12, fontWeight: FontWeight.w700),
        unselectedItemColor: Color(0xFF4a5476),
        unselectedLabelStyle: TextStyle(color: Color(0xFF4a5476), fontSize: 12, fontWeight: FontWeight.w700),
        onTap: null,
      ),

    );
  }
}


