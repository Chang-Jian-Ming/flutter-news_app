import 'package:flutter/material.dart';


Widget header(String text) {
  return AppBar(
    title: Center(
      child: Text(text)
    ),
    automaticallyImplyLeading: false,
  );
}