import 'package:flutter/material.dart';
import 'package:supply/abastecer.dart';

class Controle extends StatefulWidget {
  @override
  _ControleState createState() => _ControleState();
}

class _ControleState extends State<Controle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Controle"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(0),
              color: Colors.black87,
              shadowColor: Colors.amber,
              child: Row(
                children: [
                  Text(
                    "Supply - Históricos                    ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DropdownButton(
                    icon: Icon(Icons.arrow_drop_down_circle_outlined),
                    items: [],
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 12)),
            SingleChildScrollView(
              child: Column(
                children: [Text("Histótioco")],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 320)),
            FloatingActionButton(
              backgroundColor: Colors.black,
              child: SizedBox(width: 56, height: 56, child: Icon(Icons.add)),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Abastecer()))
              },
            ),
          ],
        ),
      ),
    );
  }
}
