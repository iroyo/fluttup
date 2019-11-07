import 'package:flutter/material.dart';

import 'members_item.dart';

class Members extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var n = MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3;

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Center(child: Image.asset('assets/brand.png', width: 180)),
      ),
      body: GridView.count(
          padding: EdgeInsets.all(12),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.7,
          crossAxisCount: n,
          children: List.generate(10, (i) => MembersItem(i))),
    );
  }
}
