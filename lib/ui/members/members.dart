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
          bottom: TopNavigationBar()),
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
    return Container(
      height: 42,
      child:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RawMaterialButton(
              onPressed: null,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                child: Text(
                  "All",
                  style: TextStyle(
                    color: colorPrimary,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            RawMaterialButton(
              onPressed: null,
              fillColor: colorAccent,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                child: Text(
                  "In common",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(42.0);
}
