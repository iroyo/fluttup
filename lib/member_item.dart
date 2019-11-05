import 'package:flutter/material.dart';
import 'package:fluttup/colors.dart';

class MemberItem extends StatelessWidget {
  final int index;

  const MemberItem({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      margin: calculatePadding(index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                FractionallySizedBox(
                  heightFactor: 0.875,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blueGrey),
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
                            Expanded(child: Container()),
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
        child: Icon(
          Icons.favorite_border,
          color: Colors.white,
        ),
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
            Icons.pin_drop,
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

EdgeInsetsGeometry calculatePadding(int position) {
  if (position % 2 == 0) {
    return EdgeInsets.only(left: 12, top: 16, right: 6);
  } else {
    return EdgeInsets.only(left: 6, top: 16, right: 12);
  }
}
