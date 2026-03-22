// ignore_for_file: must_be_immutable

import 'package:ecommercedashboard/core/const/size_const.dart';
import 'package:ecommercedashboard/core/custom/package/screen_size/extension.dart';
import 'package:ecommercedashboard/core/extension/context_extension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({super.key});
  List<double> data = [25.0, 8.0, 30.0, 17.0, 42.0, 9.0, 1.0];
  List<FlSpot> get sport => data.asMap().entries.map((e) {
    return FlSpot(e.key.toDouble(), e.value);
  }).toList();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(SizeConst.borderRadius),
      child: Container(
        height: 140.h,
        width: 165.w,

        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(SizeConst.borderRadius),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Theme.of(context).colorScheme.shadow,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: -20,
              right: -20,
              child: Container(
                height: 70.w,
                width: 70.w,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: context.colorScheme.inversePrimary.withAlpha(
                              60,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(Icons.mark_email_read),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: context.scColor.successBg,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "▼ 10.5%",
                            style: TextStyle(
                              color: context.scColor.successText,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Column(children: [Text("data")]),
                    SizedBox(
                      height: 50.h,
                      width: double.infinity,
                      child: LineChart(
                        LineChartData(
                          maxX: 6,
                          maxY: 100,
                          minX: 0,
                          minY: 0,

                          gridData: FlGridData(),
                          borderData: FlBorderData(show: false),
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                FlSpot(0, 1),
                                FlSpot(1, 20),
                                FlSpot(2, 30),
                                FlSpot(3, 100),
                                FlSpot(4, 10),
                                FlSpot(5, 60),
                                FlSpot(6, 0),
                              ],
                              dotData: FlDotData(show: false),
                              isCurved: true,
                              gradient: LinearGradient(
                                colors: [Colors.cyan, Colors.deepOrangeAccent],
                              ),
                              belowBarData: BarAreaData(
                                show: true,
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.cyan,
                                    Colors.deepOrangeAccent,
                                  ],
                                ),
                              ),
                            ),
                          ],
                          titlesData: FlTitlesData(
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
