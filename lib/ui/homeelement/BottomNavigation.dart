import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(items: [
      new BottomNavigationBarItem(
          icon: new Icon(Icons.add_alert), title: new Text("Contect")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.local_printshop), title: new Text("Print")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.calendar_today), title: new Text("Calendar")),
    ]);
  }
}
