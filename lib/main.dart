import 'package:flutter/material.dart';
import 'package:fluttup/ui/activity/activity.dart';
import 'package:fluttup/ui/chats/chats.dart';
import 'package:fluttup/ui/colors.dart';
import 'package:fluttup/ui/events/events.dart';
import 'package:fluttup/ui/icons.dart';
import 'package:fluttup/ui/members/members.dart';
import 'package:fluttup/ui/page_item.dart';
import 'package:fluttup/ui/profile/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttup',
      theme: ThemeData(
        primaryColor: colorPrimary,
        accentColor: colorAccent,
        fontFamily: 'Montserrat',
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<PageItem> pages = [
    PageItem("Members", FluttupIcons.members, Members()),
    PageItem("Activity", FluttupIcons.activities, Activity()),
    PageItem("Events", FluttupIcons.events, Events()),
    PageItem("Chat", FluttupIcons.chats, Chats()),
    PageItem("Profile", FluttupIcons.profile, Profile()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        items: pages
            .map((p) => BottomNavigationBarItem(
                  icon: Icon(p.icon),
                  title: Text(p.text),
                ))
            .toList(),
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFe01e5a),
        selectedLabelStyle: TextStyle(color: Color(0xFFe01e5a), fontSize: 11),
        unselectedItemColor: Color(0xFF4a5476),
        unselectedLabelStyle: TextStyle(color: Color(0xFF4a5476), fontSize: 11),
        onTap: _onItemTapped,
      ),
    );
  }
}
