import 'package:flutter/material.dart';

import '../styles.dart';

class Profile extends StatelessWidget {

  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Profile", style: appBarTitle),
      ),
    );
  }
}
