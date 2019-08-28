import 'package:flutter/material.dart';
import 'package:flutter_app_new_study/ui/homeelement/Body.dart';

import 'homeelement/BottomNavigation.dart';

class Home extends StatelessWidget {
  _onClick() {
    print("Contact");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.cyanAccent,
          title: new Text("Delivery App"),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.add),
                onPressed: () => debugPrint("Succeess")),
            new IconButton(
                icon: new Icon(Icons.add_a_photo), onPressed: _onClick)
          ],
        ),
        body: new Body(),
        bottomNavigationBar: new BottomNavigation());
  }
}
