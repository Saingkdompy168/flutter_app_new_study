import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> deleteDialog(BuildContext context) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Are you sure ?"),
              actions: <Widget>[
                FlatButton(
                  child: Text("Yes"),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
                FlatButton(
                  child: Text("No"),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                )
              ],
            );
          });
    }

    return new ListView.builder(
        padding: const EdgeInsets.all(4.0),
        itemBuilder: (context, i) {
          return ListTile(
            title: Text("Some Random users"),
            subtitle: Text(
              "online",
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.green),
            ),
            leading:Icon(Icons.face),
            trailing: RaisedButton(
              child:Text("Remove"),
              onPressed: () {
                deleteDialog(context).then((value) {
                  print('Valus is $value');
                });
              },
            ),
          );
        });
//    return new Container(
//      alignment: Alignment.center,
//      child: new Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          new Text("សួរស្ដី",
//              style: new TextStyle(
//                  fontSize: 15,
//                  fontWeight: FontWeight.bold,
//                  color: Colors.deepOrange.shade800))
//        ],
//      ),
//    );
  }
}
