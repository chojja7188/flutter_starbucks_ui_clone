import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header/header_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/tab/home_tab.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeTab();
  }
}
