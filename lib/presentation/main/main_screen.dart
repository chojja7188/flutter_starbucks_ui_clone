import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header_component.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HeaderComponent(),
          SliverAppBar(
            scrolledUnderElevation: 0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("What's New", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                  Text("Coupon", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                ],
              ),
              background: Column(
                children: [

                ],
              )
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 8, (BuildContext context, int index) {
                return Container(
                  color: Colors.red,
                  height: 400,
                  child: Text('Hi!'),
                );
            }
            ),
          )
        ],
      ),
    );
  }
}
