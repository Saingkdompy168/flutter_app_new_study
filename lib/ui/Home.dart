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
          centerTitle: true,
          title: new Text("ដឹកជញ្ជូន", textAlign: TextAlign.center),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
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
