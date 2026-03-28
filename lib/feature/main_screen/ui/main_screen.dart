import 'package:ecommercedashboard/feature/dashboard_screen/ui/dashboard_screen.dart';
import 'package:ecommercedashboard/feature/main_screen/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommercedashboard/feature/order_screen/ui/order_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreeState();
}

class _MainScreeState extends State<MainScreen>
    with AutomaticKeepAliveClientMixin {
  final List<Widget> _page = List.unmodifiable([
    DashboardScreen(),
    OrderScreen(),
    Placeholder(color: Colors.white),
    Placeholder(color: Colors.deepPurple),
  ]);
  final PageController _controller = PageController();
  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _controller,
              onPageChanged: (index) {
                curentIndex = index;
                debugPrint("$index");
              },
              children: _page,
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomBottomnavigationbar(
              navItem: [
                Item(icon: Icon(Icons.home)),
                Item(icon: Icon(Icons.home)),
                Item(icon: Icon(Icons.home)),
                Item(icon: Icon(Icons.home)),
              ],
              onTap: (pageIndex) {
                _controller.jumpToPage(pageIndex);
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
