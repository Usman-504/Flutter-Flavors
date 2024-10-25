import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'utils/flavor_banner.dart';
import 'utils/flavor_config.dart';

void initializeApp() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: FlavorConfig.instance.values.appName,
      builder: (_, child) {
        return FlavorBanner(
          child: child ?? const SizedBox(),
        );
     },
      home: HomeScreen(title: FlavorConfig.instance.values.appName),
    );
  }
}