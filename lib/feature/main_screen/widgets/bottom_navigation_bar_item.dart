import 'package:ecommercedashboard/shared/widgets/jumping_button.dart';
import 'package:flutter/material.dart';

Widget bottomNavigationBarItem({
  required Widget icon,
  String? label,
  VoidCallback? onTap,
  bool? isActiv,
  Color? activColor,
  Color? inActivColor,
}) {
  return JumpingButton(
    horizontalPaddinng: 0,
    verticalPadding: 0,
    onTap: onTap,
    color: Colors.transparent,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        Text(
          label ?? "",
          style: TextStyle(
            color: isActiv != null
                ? isActiv
                      ? activColor ?? Colors.deepPurple
                      : inActivColor ?? Colors.white
                : Colors.amber,

            fontWeight: .bold,
          ),
        ),
      ],
    ),
  );
}
