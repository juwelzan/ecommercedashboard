import 'package:ecommercedashboard/core/const/size_const.dart';
import 'package:ecommercedashboard/core/custom/package/screen_size/extension.dart';
import 'package:ecommercedashboard/core/extension/context_extension.dart';
import 'package:ecommercedashboard/feature/dashboard_screen/widgets/custom_bar_chart_widget.dart';
import 'package:ecommercedashboard/feature/dashboard_screen/widgets/custom_container.dart';
import 'package:ecommercedashboard/feature/dashboard_screen/widgets/share_container.dart';
import 'package:ecommercedashboard/shared/widgets/sliver_sizebox.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with AutomaticKeepAliveClientMixin {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
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
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(context.localizations.weeklydata)],
              ),
            ),

            ShareContainer(
              padding: EdgeInsets.only(bottom: 100),
              isSliver: true,
              height: 200.h,
              child: CustomBarChartWidget(),
            ),

            ShareContainer(
              isSliver: true,
              height: 200.h,
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(context.localizations.orderid),
                      Text(context.localizations.customer),
                      Text(context.localizations.status),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("#ODR-10"),
                      Row(
                        children: [
                          CircleAvatar(child: Icon(Icons.person)),
                          SizedBox(width: 10),
                          Text("Md juwel Rana"),
                        ],
                      ),
                      Text("Status"),
                    ],
                  ),
                ],
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
    );
  }

  @override
  bool get wantKeepAlive => true;
}
