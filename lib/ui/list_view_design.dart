import 'package:flutter/material.dart';
import 'package:flutterresponsive/ui/context_extension.dart';

class ListViewDesign extends StatefulWidget {
  @override
  _ListViewDesignState createState() => _ListViewDesignState();
}

class _ListViewDesignState extends State<ListViewDesign> {
  final sampleImageUrl =
      "https://media.targetfurniture.co.nz/catalog/product/cache/926507dc7f93631a094422215b778fe0/v/i/vintage-school-chair-grey.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          Text("Explore", style: context.theme.textTheme.headline3),
          SizedBox(height: context.dynamicHeight(0.2), child: buildRowItems()),
          context.emptyWidgetHeight,
          AspectRatio(aspectRatio: 10 / 1, child: buildListViewCategory()),
          buildGridViewChairs()
        ],
      ),
    );
  }

  AppBar buildAppBar() => AppBar(backgroundColor: Colors.transparent, elevation: 0);

  Row buildRowItems() {
    return Row(
      children: [
        Expanded(child: buildCardITem()),
        Expanded(child: buildCardITem()),
        Expanded(child: buildCardITem()),
      ],
    );
  }

  ListView buildListViewCategory() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>
          Padding(padding: EdgeInsets.symmetric(vertical: context.lowValue), child: Text("data")),
    );
  }

  GridView buildGridViewChairs() {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1, crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
        itemBuilder: (context, index) => ChairsCard(sampleImageUrl: sampleImageUrl));
  }

  Card buildCardITem() {
    return Card(
      child: ListTile(title: Image.network(sampleImageUrl), subtitle: Text("Sample Text")),
    );
  }
}

class ChairsCard extends StatelessWidget {
  const ChairsCard({
    Key key,
    @required this.sampleImageUrl,
  }) : super(key: key);

  final String sampleImageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Image.network(sampleImageUrl),
        subtitle: Text("sadasd"),
      ),
    );
  }
}
