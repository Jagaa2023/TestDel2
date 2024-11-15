import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../../Utilities/CustomColors.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({super.key});

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {


  List<_SalesData> data = [




    _SalesData(5, 46, 'kг'),
    _SalesData(8, 46, 'kг'),
    _SalesData(13, 47, 'kг'),
    _SalesData(16, 48, 'kг'),
    _SalesData(22, 49, 'kг'),
    _SalesData(25, 50, 'kг'),
    _SalesData(28, 53, 'kг'),
    _SalesData(33, 55, 'kг'),
    _SalesData(35, 56, 'kг'),
    _SalesData(40, 59, 'kг'),
    _SalesData(41, 62, 'kг'),
    _SalesData(42, 67, 'kг'),

  ];

  List<_SalesData> data2 = [


    _SalesData(5, 49, 'kг'),
    _SalesData(8, 45, 'kг'),
    _SalesData(13, 52, 'kг'),
    _SalesData(16, 50, 'kг'),
    _SalesData(22, 49, 'kг'),
    _SalesData(25, 56, 'kг'),
    _SalesData(28, 51, 'kг'),
    _SalesData(33, 52, 'kг'),
    _SalesData(35, 75, 'kг'),

  ];


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Initialize the chart widget
      SizedBox(
       // width: 500,
       //  height: 300,
        child: SfCartesianChart(
          // backgroundColor: Colors.white,
            primaryXAxis: CategoryAxis(

              plotBands: [
                PlotBand(
                    text: '7 хоног',
                    textStyle: TextStyle(color: Colors.red),
                    verticalTextAlignment: TextAnchor.end,
                    verticalTextPadding: '15%',
                    horizontalTextPadding: '-2%',
                    start: 8,
                    end: 8,
                    shouldRenderAboveSeries: true,
                    borderWidth: 2,
                    borderColor: Colors.red,
                    dashArray: const <double>[4, 5]

                )
              ],
            ),
            // Chart title
            //  title: ChartTitle(text: 'Half yearly sales analysis'),
            // Enable legend
            legend: Legend(isVisible: true, position: LegendPosition.bottom),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),

            series: <CartesianSeries<_SalesData, String>>[

              LineSeries<_SalesData, String>(
                  width: 10,
                  color: CustomColors.custClr_Pink,
                  dataSource: data,

                  xValueMapper: (_SalesData sales, _) => sales.year.toString(),
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  name: 'Зөвлөмж жин',
                  // Enable data label
                  dataLabelSettings:   DataLabelSettings(

                    isVisible: true,

                  )
              ),

              LineSeries<_SalesData, String>(
                  color: CustomColors.custClr_Blue,
                  dataSource: data2,
                  xValueMapper: (_SalesData sales, _) => sales.year.toString(),
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  name: 'Таны жин',
                  // Enable data label
                  markerSettings: MarkerSettings(isVisible: true,borderWidth: 1,height: 4,width: 4),
                  dataLabelSettings:   DataLabelSettings(

                    isVisible: true,

                  )
              )
            ]),
      ),

    ]);
  }
}

class _SalesData {
  _SalesData(this.year, this.sales, this.measurement);

  final int year;
  final double sales;
  final String measurement;
}
