
import 'package:flutter/material.dart';

class SecondChild extends StatelessWidget {
  SecondChild(this.data);

  final data;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page",
            style: TextStyle(fontSize: 14.0, color: Colors.purple)),
      ),
      body: Center(
        child: Container(
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
              color: Color(0xff7c94b6),
              image: DecorationImage(
                  image: NetworkImage(data["picture"]["large"]),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(75.0)),
              border: Border.all(color: Colors.red, width: 4.0)),
        ),
      ),
    );
  }
}