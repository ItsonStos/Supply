import 'package:flutter/material.dart';

class Relatorio extends StatefulWidget {
  @override
  _RelatorioState createState() => _RelatorioState();
}

class _RelatorioState extends State<Relatorio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Relatórios"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Card(
              borderOnForeground: true,
              elevation: 15,
              child: Text("Consumo Medio"),
            ),
            Card(
              borderOnForeground: true,
              child: Text("Total Despesa"),
            ),
            Card(
              child: Text("Distânci Percorrida"),
            ),
            Card(
              borderOnForeground: true,
              child: Text("Total Despesa"),
            ),
            Text("Relatórios"),
          ],
        ),
      ),
    );
  }
}
