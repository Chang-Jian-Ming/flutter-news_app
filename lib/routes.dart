import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screens/home/homepage.dart';
import 'screens/live/livepage.dart';
import 'screens/report/report.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/live':
        return MaterialPageRoute(builder: (_) => LivePage());  
      case '/report':
        return MaterialPageRoute(builder: (_) => ReportPage());  
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}')),
            )
          );
    }
  }
}