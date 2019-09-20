import 'package:flutter/material.dart';

class MyRadios extends StatefulWidget {
  @override
  _MyRadiosState createState() => _MyRadiosState();
}

class _MyRadiosState extends State<MyRadios> {

  // Este tipo é definido pelo tipo dos values dos radios que usam este groupValue
  String _groupValue;
  // String _groupValue = "m"; // Pra já iniciar marcado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radios"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column( // Antes era Row e estava dando erro: "Another exception was thrown: RenderBox was not laid out". Acho que é pq estava ficando fora das margens.
                       // O erro acima é pq o children possui um "...ListTile()" que é uma lista de alguma coisa. E listas são em colunas (um abaixo do outro).
          children: <Widget>[

            RadioListTile(
              title: Text("Masculino"),
              value: "m", // Pode ser qualquer tipo: número, string...
              groupValue: _groupValue,
              activeColor: Colors.amber,
              onChanged: (String valor) {
                setState(() {
                  _groupValue = valor;
                });
              },
            ),

            RadioListTile(
              title: Text("Feminino"),
              value: "f",
              groupValue: _groupValue,
              activeColor: Colors.amber,
              onChanged: (String valor) {
                setState(() {
                  _groupValue = valor;
                });
              },
            ),

            /*
            Text("Masculino"),
            Radio(
              value: "m", // Pode ser qualquer tipo: número, string...
              groupValue: _groupValue,
              activeColor: Colors.amber,
              onChanged: (String valor) {
                print("Valor: " + valor);
                setState(() {
                  _groupValue = valor;
                });
              },
            ),

            Text("Feminino"),
            Radio(
              value: "f",
              groupValue: _groupValue,
              activeColor: Colors.amber,
              onChanged: (String valor) {
                print("Valor: " + valor);
                setState(() {
                  _groupValue = valor;
                });
              },
            )
            */

          ],
        ),
      )
    );
  }
}