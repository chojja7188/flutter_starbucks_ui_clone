import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/config/ui_config.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header/app_bar_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/header/header_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/event_list.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/first_promotion_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/second_promotion_component.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/whats_new_component.dart';
import 'package:flutter_starbucks_ui_clone/repository/event_repository.dart';
import 'package:flutter_starbucks_ui_clone/repository/news_repository.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late ScrollController _controller;
  bool _headerVisible = true;
  bool _floatButtonExtended = true;
  int _currentIndex = 0;

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
          const AppBarComponent(),
          const FirstPromotionComponent(),
          const SecondPromotionComponent(),
          WhatsNewComponent(repository: NewsRepository()),
          EventList(repository: EventRepository()),
          const SliverToBoxAdapter(
            child: SizedBox(height: 30)
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        extendedIconLabelSpacing: _floatButtonExtended ? 10 : 5,
        extendedPadding: _floatButtonExtended ? null : const EdgeInsets.only(left: 16, top: 16, right: 12, bottom: 16),
        icon: const Icon(Icons.moped_outlined, color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: UiConfig.primaryColor,
        onPressed: () {
          context.push('/delivery');
        },
        label: AnimatedSize(
          duration: const Duration(milliseconds: 100),
          child: _floatButtonExtended ? const Text('Delivers', style: TextStyle(color: Colors.white, fontSize: 22),) : const SizedBox()
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 13,
        unselectedFontSize: 13,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: UiConfig.primaryColor,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 32), label: 'Home',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.payment, size: 32), label: 'Pay'
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.local_drink, size: 32), label: 'Order'
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, size: 32), label: 'Shop'
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz, size: 32), label: 'Other'
          ),
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