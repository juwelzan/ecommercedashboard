import 'package:flutter/material.dart';

class Screeninherit extends InheritedWidget {
  const Screeninherit({super.key, required super.child});
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static Screeninherit of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Screeninherit>()!;
  }
}
