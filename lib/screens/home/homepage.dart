import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../components/header.dart';
import '../../components/bottomNavigationBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: header("News Application"),
        body: Body(),
        bottomNavigationBar: bottomNavBar(context, 1), 
      ),
      onPanUpdate: (details) {
        if (details.delta.dx < 0) {
          Navigator.pushNamed(context, "/report");
        } else if (details.delta.dx > 0) {
          Navigator.pushNamed(context, "/live");
        }
      },
    );
  }
}