import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_new_study/ui/tab/detail_page.dart';
import 'package:http/http.dart' as http;

class APIRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  String url = 'https://randomuser.me/api/?results=15';
  List data;

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      Map<String, dynamic> map = jsonDecode(response.body);
      data = map["results"];
    });
    return response.body;
//    print(data[0]["location"]["city"]);
  }

  @override
  void initState() {
    this.makeRequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, i) {
            return ListTile(
              title: Text(data[i]["name"]["first"].toString().toUpperCase()),
              subtitle: Text(data[i]["phone"]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data[i]["picture"]["thumbnail"]),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            SecondChild(data[i])));
              },
            );
          },
        ),
      ),
    );
  }
}
