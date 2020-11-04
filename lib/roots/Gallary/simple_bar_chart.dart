import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChart.withSampleData() {
    return new SimpleLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 100),
      new LinearSales(1, 75),
      new LinearSales(2, 73),
      new LinearSales(3, 71),
      new LinearSales(4, 72),
      new LinearSales(5, 73),
      new LinearSales(6, 70),
      new LinearSales(7, 69),
      new LinearSales(8, 70),
      new LinearSales(9, 68),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Weight',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.date,
        measureFn: (LinearSales sales, _) => sales.weight,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int date;
  final int weight;

  LinearSales(this.date, this.weight);
}
