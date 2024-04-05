import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/config/ui_config.dart';
import 'package:flutter_starbucks_ui_clone/model/news.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/whats_new_card.dart';
import 'package:flutter_starbucks_ui_clone/repository/news_repository.dart';

class WhatsNewComponent extends StatefulWidget {
  final NewsRepository repository;
  const WhatsNewComponent({super.key, required this.repository});

  @override
  State<WhatsNewComponent> createState() => _WhatsNewComponentState();
}

class _WhatsNewComponentState extends State<WhatsNewComponent> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("What's New", style: TextStyle(fontSize: 24,)),
                  Text('See all', style: TextStyle(fontSize: 17, color: UiConfig.primaryColor),)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: _getNewsList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return WhatsNewCard(
                      news: _getNewsList()[index]
                    );
              }),
            )
          ],
        )
      ),
    );
  }

  List<News> _getNewsList() {
    return widget.repository.getNewsList();
  }
}
