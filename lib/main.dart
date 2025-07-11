import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(const XrpTrackerApp());

class XrpTrackerApp extends StatelessWidget {
  const XrpTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XRP Crypto Value in MYR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
