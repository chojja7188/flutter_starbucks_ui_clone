import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header/app_bar_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header/header_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/first_promotion_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/second_promotion_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/whats_new_component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late ScrollController _controller;
  bool _headerVisible = true;
  bool _floatButtonExtended = true;

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
    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          HeaderComponent(visible: _headerVisible),
          AppBarComponent(),
          FirstPromotionComponent(),
          SecondPromotionComponent(),
          WhatsNewComponent(),
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
      floatingActionButton: FloatingActionButton.extended(
        extendedIconLabelSpacing: _floatButtonExtended ? 10 : 5,
        extendedPadding: _floatButtonExtended ? null : EdgeInsets.only(left: 16, top: 16, right: 12, bottom: 16),
        icon: Icon(Icons.moped_outlined, color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: Colors.green,
        onPressed: () {  },
        label: AnimatedSize(
          duration: Duration(milliseconds: 100),
          child: _floatButtonExtended ? Text('Delivers', style: TextStyle(color: Colors.white, fontSize: 22),) : SizedBox()
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        ],

      ),
    );
  }

  // setState 호출이 과도하지 않을까 생각해봤는데 무리 없어보임
  void _scrollListener() {
    if (_controller.offset > 220) {
      setState(() {
        _floatButtonExtended = false;
      });
    } else if (_controller.offset > 130) {
      setState(() {
        _headerVisible = false;
        _floatButtonExtended = true;
      });
    } else {
      setState(() {
        _headerVisible = true;
      });
    }
  }
}