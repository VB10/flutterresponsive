import 'package:flutter/material.dart';
import 'package:flutterresponsive/ui/context_extension.dart';

class BadColumDesign extends StatelessWidget {
  const BadColumDesign({
    Key key,
    @required this.buildBottomNavigationBar,
    @required this.sampleChairsUrl,
  }) : super(key: key);

  final BottomNavigationBar buildBottomNavigationBar;
  final String sampleChairsUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello")),
      bottomNavigationBar: buildBottomNavigationBar,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.dynamicWidth(0.1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 250, child: Center(child: Image.network(sampleChairsUrl))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 5),
                Container(width: 5),
                CircleAvatar(radius: 5, backgroundColor: Colors.black26),
                Container(width: 5),
                CircleAvatar(radius: 5),
                Container(width: 5),
                CircleAvatar(radius: 5),
              ],
            ),
            Container(child: Text("Accent", style: TextStyle(fontSize: 45)), height: 50),
            Container(
              child: Text("data" * 20, style: TextStyle(fontSize: 25, color: Colors.grey)),
            ),
            Container(height: 5),
            Container(height: 50, child: Placeholder()),
            Row(
              children: [
                IconButton(icon: Icon(Icons.favorite), onPressed: null),
                Container(width: 15),
                RaisedButton(onPressed: null),
                Container(width: 15),
                RaisedButton(onPressed: null),
              ],
            )
          ],
        ),
      ),
    );
  }
}
