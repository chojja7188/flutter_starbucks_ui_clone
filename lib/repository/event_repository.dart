import 'package:flutter_starbucks_ui_clone/model/event.dart';

class EventRepository {
  List<Event> getEventList() {
    return [
      Event(
          imagePath: 'assets/images/event/event_image_1.jpeg'
      ),
      Event(
          imagePath: 'assets/images/event/event_image_2.jpeg'
      ),
      Event(
          imagePath: 'assets/images/event/event_image_3.jpeg'
      ),
      Event(
          imagePath: 'assets/images/event/event_image_4.jpeg'
      ),
      Event(
          imagePath: 'assets/images/event/event_image_5.jpeg'
      ),
      Event(
          imagePath: 'assets/images/event/event_image_6.jpeg'
      )
    ];
  }
}