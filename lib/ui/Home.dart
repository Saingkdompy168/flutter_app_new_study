import 'package:flutter/material.dart';

import 'homeelement/Body.dart';
import 'homeelement/BottomNavigation.dart';

class Home extends StatelessWidget {
  _onClick() {
    print("Contact");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          centerTitle: true,
          title: Text("ដឹកជញ្ជូន", textAlign: TextAlign.center),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add), onPressed: () => debugPrint("Succeess")),
            IconButton(icon: Icon(Icons.add_a_photo), onPressed: _onClick)
          ],
        ),
        body: Body(),
        bottomNavigationBar: BottomNavigation());
  }
}
