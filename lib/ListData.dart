import 'dart:ffi';

import 'package:flutter/material.dart';

class MyData extends StatefulWidget {
  const MyData({Key? key}) : super(key: key);

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  List<String> quotes = [
    "I can accept failure, everyone fails at something. But I can't accept not trying.",
    "I've never lost a game, I just ran out of time.",
    "Talent wins games, but teamwork and intelligence wins championships."
  ];

  List<String> names = ["Huzaifa", "Kamran", "Hammad"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extract Data From List"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // children: quotes.map((q) => Text(q)).toList(),
        children: names.map((n) => Text(n)).toList(),
      ),
    );
  }
}
