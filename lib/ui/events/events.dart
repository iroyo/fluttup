import 'package:flutter/material.dart';

import '../styles.dart';

class Events extends StatelessWidget {

  const Events({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Events", style: appBarTitle),
      ),
    );
  }
}
