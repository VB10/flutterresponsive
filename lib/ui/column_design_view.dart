import 'package:flutter/material.dart';
import 'package:flutterresponsive/ui/context_extension.dart';

class ColumDesignView extends StatefulWidget {
  ColumDesignView({Key key}) : super(key: key);

  @override
  _ColumDesignViewState createState() => _ColumDesignViewState();
}

class _ColumDesignViewState extends State<ColumDesignView> {
  final sampleChairsUrl =
      "https://admin-test.chstest.dk/globalassets/products/chairs/e005/embrace-chair-eg-saebe-loke7748.png?aspect=16:9&device=desktop&size=medium&display=standard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNavigationBar,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.dynamicWidth(0.1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 25, child: Center(child: Image.network(sampleChairsUrl))),
            Expanded(child: buildRowImageItems()),
            Expanded(flex: 3, child: FittedBox(child: Text("Accent", style: Theme.of(context).textTheme.headline3))),
            Expanded(flex: 5, child: buildSingleChildScrollViewDescription(context)),
            Spacer(),
            Expanded(flex: 4, child: Placeholder()),
            Expanded(flex: 6, child: buildRowBuyButtons())
          ],
        ),
      ),
    );
  }

  SingleChildScrollView buildSingleChildScrollViewDescription(BuildContext context) {
    return SingleChildScrollView(
        child: Text("data" * 20, style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.red)));
  }

  Row buildRowImageItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(flex: 10),
        CircleAvatar(radius: 5),
        Spacer(),
        CircleAvatar(radius: 5, backgroundColor: Colors.black26),
        Spacer(),
        CircleAvatar(radius: 5),
        Spacer(),
        CircleAvatar(radius: 5),
        Spacer(flex: 10),
      ],
    );
  }

  Row buildRowBuyButtons() {
    return Row(
      children: [
        Expanded(child: IconButton(icon: Icon(Icons.favorite), onPressed: null)),
        Spacer(flex: 5),
        Expanded(flex: 4, child: RaisedButton(onPressed: null)),
        Spacer(),
        Expanded(flex: 4, child: RaisedButton(onPressed: null)),
      ],
    );
  }

  AppBar buildAppBar() => AppBar(title: Text("Hello"));

  BottomNavigationBar get buildBottomNavigationBar {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.hail), label: "Page1"),
      BottomNavigationBarItem(icon: Icon(Icons.hail), label: "Page2"),
    ]);
  }
}
