import 'package:financeapp/screens/homepage.dart';
import 'package:financeapp/widgets/nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black, 
        ),
      ),
      debugShowCheckedModeBanner: false,
      home:  NavProvider(),
      
    );
  }
}
