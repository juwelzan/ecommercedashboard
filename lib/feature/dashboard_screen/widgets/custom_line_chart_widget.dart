import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChartWidget extends StatelessWidget {
  const CustomLineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(show: false),

        lineTouchData: LineTouchData(
          enabled: true,
          handleBuiltInTouches: true,
          touchSpotThreshold: 50,

          // touchTooltipData: LineTouchTooltipData(
          //   getTooltipItems: (spots) {
          //     return spots.map((spot) {
          //       return LineTooltipItem(
          //         '\$${spot.y.toStringAsFixed(0)}',
          //         const TextStyle(color: Colors.white),
          //       );
          //     }).toList();
          //   },
          // ),
          // getTouchedSpotIndicator: (barData, spotIndexes) {
          //   return spotIndexes.map((index) {
          //     return TouchedSpotIndicatorData(
          //       FlLine(color: Colors.white, strokeWidth: 1, dashArray: [5, 5]),
          //       FlDotData(show: false),
          //     );
          //   }).toList();
          // },
        ),

        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 10),
              FlSpot(1, 30),
              FlSpot(2, 0),
              FlSpot(3, 50),
              FlSpot(4, 10),
              FlSpot(5, 60),
              FlSpot(6, 10),
            ],
            isCurved: true,
            color: Colors.green,
            barWidth: 3,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.bottomCenter,
                colors: [Colors.lightGreen, Colors.lightGreen.withOpacity(0.1)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
