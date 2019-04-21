import 'package:flutter/material.dart';
import './app_screens/home.dart';
import 'app_screens/listview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "flight bookings",

    // home: Home(),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long list view"),
      ),
      body: getList(),
      // body: Home(),
    ),
  ));
}
