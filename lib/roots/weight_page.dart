import 'package:flutter/material.dart';
import 'Gallary/simple_bar_chart.dart';

class WeightPage extends StatefulWidget {
  WeightPage({Key key}) : super(key: key);

  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('体重'),
        ),
        body:
        ChartPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ChartPage extends StatefulWidget {
  ChartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:
        new SimpleLineChart.withSampleData(),
      ),
    );
  }
}