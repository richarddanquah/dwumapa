import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/features/authentication/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dwumapa',
      theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.red),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    );
  }
}

