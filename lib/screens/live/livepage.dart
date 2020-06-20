import 'package:flutter/material.dart';

import 'components/body.dart';
import '../../components/header.dart';
import '../../components/bottomNavigationBar.dart';

class LivePage extends StatefulWidget {
  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: header("Live Stream"),
        body: Body(),
        bottomNavigationBar: bottomNavBar(context, 0), 
      ),
      onPanUpdate: (details) {
        if (details.delta.dx < 0) {
          Navigator.pushNamed(context, "/");
        } 
      },
    );
  }
}