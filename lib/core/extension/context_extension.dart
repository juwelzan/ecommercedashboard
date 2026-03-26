import 'package:ecommercedashboard/core/theme/app_theme.dart';
import 'package:ecommercedashboard/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  SemanticColors get scColor => SemanticColors.of(this);
  AppLocalizations get localizations => AppLocalizations.of(this)!;
}
