import 'package:flutter/material.dart';

Widget bottomNavigationBarItem({
  required Widget icon,
  String? label,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [icon, Text(label ?? "")],
    ),
  );
}
