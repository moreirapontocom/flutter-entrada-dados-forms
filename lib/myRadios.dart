import 'package:flutter/material.dart';

class MyRadios extends StatefulWidget {
  @override
  _MyRadiosState createState() => _MyRadiosState();
}

class _MyRadiosState extends State<MyRadios> {

  // Este tipo é definido pelo tipo dos values dos radios que usam este groupValue
  String _groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radios"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[

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

          ],
        ),
      )
    );
  }
}