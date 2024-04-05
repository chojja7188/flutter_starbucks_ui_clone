import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/model/event.dart';

class EventCard extends StatelessWidget {
  final Event event;
  const EventCard({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 6,
                  spreadRadius: 0.4,
                  offset: Offset(0, 5)
              )
            ]
        ),
          child: Image.asset(event.imagePath)
      ),
    );
  }
}
