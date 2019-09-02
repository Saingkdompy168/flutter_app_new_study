import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.add_alert), title: new Text("កណ្ដឹង")),
      new BottomNavigationBarItem(
          icon: Icon(Icons.local_printshop), title: new Text("ហ្វូតូ")),
      new BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today), title: new Text("ប្រតិទិន្ន")),
    ]);
  }
}
