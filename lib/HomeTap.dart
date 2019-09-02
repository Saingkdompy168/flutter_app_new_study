import 'package:flutter/material.dart';

import 'ui/tab/firstpage.dart' as firstpage;
import 'ui/tab/secondpage.dart' as secondpage;

class HomeTap extends StatelessWidget {
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

class _SampleAppPageState extends State<SampleAppPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tap App"),
        backgroundColor: Colors.teal,
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.business),
            ),
            Tab(icon: Icon(Icons.movie_creation)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[firstpage.FirstPage(), secondpage.SecondPage()],
      ),
    );
  }
}
