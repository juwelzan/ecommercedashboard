import 'package:ecommercedashboard/feature/main_screen/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreeState();
}

class _MainScreeState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomBottomnavigationbar(
              onTap: (pageIndex) {
                print(pageIndex);
              },
            ),
          ),
        ],
      ),
    );
  }
}
