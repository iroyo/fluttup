import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Image.asset('assets/brand.png'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return Card(
            elevation: 2,
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.all(8),
            child: Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              direction: Axis.vertical,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blueGrey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Main text',
                        style: TextStyle(
                          fontSize: 16,
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
                ),
                Divider(
                  height: 2,
                  color: Color.fromRGBO(232, 232, 232, 1),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.pin_drop,
                        color: Color.fromRGBO(46, 182, 125, 1),
                        size: 14,
                      ),
                      Text(
                        "1km from you",
                        style: TextStyle(
                            color: Color.fromRGBO(132, 140, 167, 1),
                            fontSize: 13),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
