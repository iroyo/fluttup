import 'package:flutter/material.dart';

import '../styles.dart';

class Activity extends StatelessWidget {

  const Activity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Activity", style: appBarTitle),
      ),
    );
  }
}
