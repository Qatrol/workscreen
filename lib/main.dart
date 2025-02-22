import 'package:flutter/material.dart';
import 'package:workscreen/core/theme/apptheme.dart';
import 'package:workscreen/features/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Home(),
    );
  }
}
