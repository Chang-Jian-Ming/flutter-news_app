import 'package:flutter/material.dart';

import 'components/body.dart';
import '../../components/bottomNavigationBar.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: Body(),
        bottomNavigationBar: bottomNavBar(context, 2), 
      ),
      onPanUpdate: (details) {
        if (details.delta.dx > 0) {
          Navigator.pushNamed(context, "/");
        } 
      },
    );
  }
}