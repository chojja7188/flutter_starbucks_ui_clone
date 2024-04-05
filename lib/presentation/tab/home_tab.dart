import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header/app_bar_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header/header_component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HeaderComponent(),
        AppBarComponent(),
        SliverToBoxAdapter(
          child: Container(
            
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
    );
  }
}
