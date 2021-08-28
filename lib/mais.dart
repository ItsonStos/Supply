import 'package:flutter/material.dart';

class Mais extends StatefulWidget {
  @override
  _MaisState createState() => _MaisState();
}

class _MaisState extends State<Mais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Supply"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(child: Text("Mais")),
    );
  }
}
