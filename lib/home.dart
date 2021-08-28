import 'package:flutter/material.dart';
import 'package:supply/controle.dart';
import 'package:supply/mais.dart';
import 'package:supply/relatorio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [Relatorio(), Controle(), Mais()];

    return Scaffold(
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (indice) {
            setState(() {
              _indiceAtual = indice;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_bar_chart), title: Text("Relatório")),
            BottomNavigationBarItem(
                icon: Icon(Icons.speed), title: Text("Controle")),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), title: Text("Mais")),
          ]),
    );
  }
}
