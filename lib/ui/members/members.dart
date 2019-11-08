import 'package:flutter/material.dart';
import 'package:fluttup/ui/icons.dart';

import '../colors.dart';
import 'members_item.dart';

class Members extends StatelessWidget {
  const Members({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var n = MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3;

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Center(
          child: Text(
            "Fluttup",
            style: TextStyle(
              color: colorPrimary,
              fontSize: 28,
              fontFamily: "Forte",
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              FluttupIcons.filters,
              color: colorAccent,
            ),
            onPressed: null,
          )
        ],
        bottom: TopNavigationBar(),
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

class TopNavigationBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.yellow),);
  }

  @override
  Size get preferredSize => Size.fromHeight(42.0);

}
