import 'package:flutter/material.dart';

class SliverSizebox extends StatelessWidget {
  final double? height, width;
  final Widget? child;

  const SliverSizebox({super.key, this.child, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(height: height, width: width, child: child),
    );
  }
}

class SliverGap extends StatelessWidget {
  final double? height, width;

  const SliverGap({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(height: height, width: width),
    );
  }
}
