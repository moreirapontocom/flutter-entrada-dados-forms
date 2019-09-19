import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  String _nome = "Olá <<Desconhecido>>";

  bool _checkbox = true;

  void _trocaNome() {
    setState(() {
      _nome = "Olá " + _textEditingController.text + "!";
    });

    _textEditingController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(_nome,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: "Escreva seu nome"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    "Clique aqui",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _trocaNome,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Teste de Checkbox"),
                    Checkbox(
                      value: _checkbox,
                      onChanged: (bool valor) {
                        print("O valor do checkbox é: " + valor.toString());
                        setState(() {
                          _checkbox = valor;
                        });
                      },
                    )
                  ],
                ),
              ),
              RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {
                  setState(() {
                    _checkbox = !_checkbox;
                  });
                },
                child: Text("Toggle checkbox", style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      )
    );
  }
}