import 'package:ecommercedashboard/core/extension/context_extension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChartWidget extends StatelessWidget {
  const CustomBarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final day = context.localizations;
    final List weekday = [
      day.monday,
      day.tuesday,
      day.wednesday,
      day.thursday,
      day.friday,
      day.saturday,
      day.sunday,
    ];
    return BarChart(
      BarChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            drawBelowEverything: false,
            axisNameSize: 40,
            axisNameWidget: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  weekday.length,
                  (index) => Text(weekday[index]),
                ),
              ),
            ),
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(fitInsideHorizontally: true),
        ),

        barGroups: [
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 60,
                width: 20,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 60,
                width: 20,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 60,
                width: 20,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 60,
                width: 20,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 60,
                width: 20,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 60,
                width: 20,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 100,
                width: 20,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
            ],
          ),
        ],
        alignment: BarChartAlignment.spaceAround,
      ),
    );
  }
}
