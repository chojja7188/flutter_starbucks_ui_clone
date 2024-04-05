import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/presentation/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white
        ),
        useMaterial3: true,
      ),
      home: Scaffold(

        body: MainScreen(),
      )
    );
  }
}
