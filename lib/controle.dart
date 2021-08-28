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
        title: Text("Supply"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text("Históricos"),
            Center(
              child: FloatingActionButton(
                backgroundColor: Colors.black,
                child: SizedBox(width: 56, height: 56, child: Icon(Icons.add)),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Abastecer()))
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
