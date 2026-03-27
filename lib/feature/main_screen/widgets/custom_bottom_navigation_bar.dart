import 'package:ecommercedashboard/core/extension/context_extension.dart';
import 'package:ecommercedashboard/feature/main_screen/widgets/bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

typedef OnTapcall = Function(int pageIndex);

class CustomBottomnavigationbar extends StatelessWidget {
  final OnTapcall? onTap;
  const CustomBottomnavigationbar({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,

      decoration: BoxDecoration(color: context.colorScheme.surface),

      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              onTap: () => onTap?.call(0),
            ),
            bottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              onTap: () => onTap?.call(1),
            ),
            bottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              onTap: () => onTap?.call(2),
            ),
            bottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              onTap: () => onTap?.call(3),
            ),
          ],
        ),
      ),
    );
  }
}
