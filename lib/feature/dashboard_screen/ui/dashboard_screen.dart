import 'package:ecommercedashboard/core/const/size_const.dart';
import 'package:ecommercedashboard/core/custom/package/screen_size/extension.dart';
import 'package:ecommercedashboard/feature/dashboard_screen/widgets/custom_container.dart';
import 'package:ecommercedashboard/shared/widgets/sliver_sizebox.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: SizeConst.padding10,
            right: SizeConst.padding10,
          ),
          child: CustomScrollView(
            slivers: [
              SliverGap(height: SizeConst.padding20),
              SliverSizebox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [CustomContainer(), CustomContainer()],
                ),
              ),
              SliverGap(height: 50),
              SliverSizebox(
                height: 200,
                width: double.infinity,
                child: BarChart(
                  BarChartData(
                    titlesData: FlTitlesData(
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    barGroups: [
                      BarChartGroupData(
                        x: 100,

                        groupVertically: false,
                        barRods: <BarChartRodData>[
                          BarChartRodData(
                            toY: 10,
                            width: 10,
                            backDrawRodData: BackgroundBarChartRodData(
                              toY: 100,
                              show: true,
                            ),
                          ),
                          BarChartRodData(toY: 2),
                          BarChartRodData(toY: 4),
                        ],
                        barsSpace: 10.w,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          ],
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
        ),
      ),
    );
  }
}
