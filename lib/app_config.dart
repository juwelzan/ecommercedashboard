import 'package:ecommercedashboard/core/theme/app_theme.dart';
import 'package:ecommercedashboard/feature/dashboard_screen/ui/dashboard_screen.dart';
import 'package:ecommercedashboard/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppConfig extends StatelessWidget {
  const AppConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('bn')],
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
