import 'package:ecommercedashboard/core/extension/context_extension.dart';
import 'package:ecommercedashboard/feature/main_screen/widgets/bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomnavigationbar extends StatelessWidget {
  const CustomBottomnavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,

      decoration: BoxDecoration(color: context.colorScheme.surface),

      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [bottomNavigationBarItem(icon: Icon(Icons.home))],
        ),
      ),
    );
  }
}
