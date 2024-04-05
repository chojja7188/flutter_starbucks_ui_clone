import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/model/event.dart';
import 'package:flutter_starbucks_ui_clone/presentation/component/wrapper/event_card.dart';
import 'package:flutter_starbucks_ui_clone/repository/event_repository.dart';

class EventList extends StatefulWidget {
  final EventRepository repository;
  const EventList({Key? key, required this.repository}) : super(key: key);

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: _getEventList().length, (BuildContext context, int index) {
        return EventCard(event: _getEventList()[index]);
      })
    );
  }

  List<Event> _getEventList() {
    return widget.repository.getEventList();
  }
}
