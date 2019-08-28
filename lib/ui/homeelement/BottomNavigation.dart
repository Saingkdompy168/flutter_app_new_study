import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(items: [
      new BottomNavigationBarItem(
          icon: new Icon(Icons.add_alert), title: new Text("កណ្ដឹង")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.local_printshop), title: new Text("ហ្វូតូ")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.calendar_today), title: new Text("ប្រតិទិន្ន")),
    ]);
  }
}
