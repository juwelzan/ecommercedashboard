import 'package:ecommercedashboard/app_config.dart';
import 'package:ecommercedashboard/core/custom/package/screen_size/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(screenBuilder: (context) => AppConfig());
  }
}
