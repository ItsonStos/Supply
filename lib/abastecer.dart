import 'package:flutter/material.dart';

class Abastecer extends StatefulWidget {
  @override
  _AbastecerState createState() => _AbastecerState();
}

class _AbastecerState extends State<Abastecer> {
  //Preciso converter a var tipo DateTime para uma String,
  //pois servira como dado inicial na minha textField
  DateTime _data = DateTime.now();
  //String _dataFormatada = Dateformat('dMy').toString(_date);
  //initialValue: Text(Dateformat("dd/MM/yyy").toString(_data)),

//Capturar o dados de entrada do textFild atravez do controlador
  TextEditingController _odometro = TextEditingController();
  TextEditingController _tipoCombustivel = TextEditingController();
  TextEditingController _precoCombustivel = TextEditingController();
  TextEditingController _valorTotal = TextEditingController();
  TextEditingController _volume = TextEditingController();
  TextEditingController _postoCombustivel = TextEditingController();

  //Array que servirá para armazenar os dados salvos no textField
  /*Se Fosse um Map<chave(dynamic), valor((dynamic))> nomeMAp =  Map() e para add faz um forEach
  nomeMap.forEach((chave, valor) => print("$Chave - $Valor"))*/
  List<_AbastecerState> abastecimento = [];

  //Construtor da classe para poder instanciar
  //_AbastecerState();

  //Calcular Volume
  /*double volume() {
    var precoCombustivel = double.tryParse(_precoCombustivel.text);
    var valorTotal = double.tryParse(_valorTotal.text);
    return valorTotal / precoCombustivel;
  }*/

//Método que servira para salvar o dados de entrada em uma Array e converterá os dados do tipo
//String para seus respectivos tipos
  void _salva() {
    for (_AbastecerState abastecer in abastecimento) {
      //Instanciando a classe Abastecer:
      _AbastecerState cadastro = _AbastecerState(
          this._data,
          this._odometro,
          this._postoCombustivel,
          this._precoCombustivel,
          this._tipoCombustivel,
          this._valorTotal,
          this._volume);

      abastecimento.add(cadastro);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Text("Abastecimento"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                      child: TextField(
                    keyboardType: TextInputType.datetime,
                    controller: TextEditingController()..text = 'dataAtual',
                    onChanged: (text) => {},
                    decoration: InputDecoration(
                        labelText: "Data", icon: Icon(Icons.date_range)),
                  )),
                  Flexible(
                      child: TextField(
                    keyboardType: TextInputType.datetime,
                    controller: TextEditingController()..text = 'horaAtual',
                    onChanged: (text) => {},
                    decoration: InputDecoration(
                        labelText: "Hora", icon: Icon(Icons.hourglass_empty)),
                  ))
                ],
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Odômetro", icon: Icon(Icons.av_timer_rounded)),
                controller: _odometro,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Tipo de Combustível",
                    icon: Icon(Icons.date_range)),
              ),
              Row(
                children: [
                  Flexible(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Preço/L", icon: Icon(Icons.attach_money)),
                    controller: _precoCombustivel,
                  )),
                  Flexible(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Valor Total", icon: Icon(Icons.money)),
                    controller: _valorTotal,
                  )),
                ],
              ),
              Row(
                children: [
                  Flexible(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Volume(L)", icon: Icon(Icons.local_drink)),
                    controller: _volume,
                  )),
                  Flexible(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Autonomia (km)",
                        icon: Icon(Icons.money_outlined)),
                  )),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Posto de Combustível",
                    icon: Icon(Icons.local_gas_station)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 15,
                    shadowColor: Colors.grey,
                  ),
                  child: Text(
                    "Salvar",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _salva,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dateformat {}
