import 'package:flutter/material.dart';

import 'routes.dart';
import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: appTheme(),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
