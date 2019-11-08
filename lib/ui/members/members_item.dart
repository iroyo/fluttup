import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttup/ui/colors.dart';
import 'package:fluttup/ui/icons.dart';

class MembersItem extends StatelessWidget {
  final int _index;

  const MembersItem(this._index, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                FractionallySizedBox(
                  heightFactor: 0.875,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://picsum.photos/250?image=${_index+10}"),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 15,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 8,
                        ),
                        child: Row(
                          children: [
                            Expanded(child: Activities()),
                            MemberItemAction(),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          MemberItemData(),
          Divider(height: 2, thickness: 2, color: Color(0xFFE8E8E8)),
          MemberItemFooter()
        ],
      ),
    );
  }
}

class Activities extends StatelessWidget {
  final _sizeBadge = 30.0;

  final _activities = [Colors.blue, Colors.amber, Colors.green];

  @override
  Widget build(BuildContext context) {
    var _count = 0;
    return Stack(
      alignment: Alignment.center,
      children: _activities.map((value) {
        final badge = Positioned(
          left: _count * ((_sizeBadge / 2) + 8),
          child: ActivityBadge(_sizeBadge, value),
        );
        _count++;
        return badge;
      }).toList(),
    );
  }
}

class ActivityBadge extends StatelessWidget {
  const ActivityBadge(
    this.size,
    this.background, {
    Key key,
  }) : super(key: key);

  final double size;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(size / 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1.5),
            borderRadius: BorderRadius.circular(size / 2),
          ),
          child: Icon(
            Icons.ac_unit,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class MemberItemAction extends StatelessWidget {
  const MemberItemAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: RawMaterialButton(
        elevation: 4,
        fillColor: colorAccent,
        shape: CircleBorder(),
        child: Icon(FluttupIcons.like, size: 30, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}

class MemberItemData extends StatelessWidget {
  const MemberItemData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Main text',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(74, 21, 75, 1),
            ),
          ),
          Text(
            'Sub title',
            style: TextStyle(
              fontSize: 13,
              color: Color.fromRGBO(132, 140, 167, 1),
            ),
          ),
        ],
      ),
    );
  }
}

class MemberItemFooter extends StatelessWidget {
  const MemberItemFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        children: [
          Icon(
            FluttupIcons.location,
            color: Color.fromRGBO(46, 182, 125, 1),
            size: 14,
          ),
          SizedBox(width: 4),
          Text(
            "1km from you",
            style: TextStyle(
              color: Color.fromRGBO(132, 140, 167, 1),
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }
}
