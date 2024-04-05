import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header/app_bar_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header/header_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/first_promotion_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/second_promotion_component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late ScrollController _controller;
  bool _headerVisible = true;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _controller,
      slivers: [
        HeaderComponent(visible: _headerVisible),
        AppBarComponent(),
        FirstPromotionComponent(),
        SecondPromotionComponent(),
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

  // setState 호출이 과도하지 않을까 생각해봤는데 무리 없어보임
  void _scrollListener() {
    if (_controller.offset > 130) {
      setState(() {
        _headerVisible = false;
      });
    } else {
      setState(() {
        _headerVisible = true;
      });
    }
  }
}