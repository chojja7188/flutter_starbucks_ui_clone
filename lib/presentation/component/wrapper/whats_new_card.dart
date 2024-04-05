import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/model/news.dart';

class WhatsNewCard extends StatelessWidget {
  final News news;
  const WhatsNewCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
                news.imagePath,
              height: 160,
            ),
          ),
          const SizedBox(height: 8),
          Text(news.title, style: const TextStyle(fontSize: 20),
            overflow: TextOverflow.ellipsis
          ),
          const SizedBox(height: 4),
          Text(news.description, style: const TextStyle(fontSize: 14, color: Color(0xff7f7f7f)),
            overflow: TextOverflow.ellipsis,
          maxLines: 2)
        ],
      ),
    );
  }
}
