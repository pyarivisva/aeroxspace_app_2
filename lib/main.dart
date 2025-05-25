import 'package:flutter/material.dart';
import 'package:aeroxspace_app_2/detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TourAja',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DetailScreen(),
    );
  }
}
