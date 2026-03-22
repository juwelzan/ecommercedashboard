import 'package:ecommercedashboard/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  SemanticColors get scColor => SemanticColors.of(this);
}
