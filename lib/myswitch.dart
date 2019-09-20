import 'package:flutter/material.dart';

class MySwitches extends StatefulWidget {
  @override
  _MySwitchesState createState() => _MySwitchesState();
}

class _MySwitchesState extends State<MySwitches> {

  // Este tipo é definido pelo tipo dos values dos radios que usam este groupValue
  bool _value = true;
  bool _valueSMS = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switches"),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[

            SwitchListTile(
              title: Text("Receber notificações por email"),
              subtitle: Text("Nós odiamos spam"),
              value: _value,
              onChanged: (bool valor) {
                setState(() {
                  _value = valor;
                });
              },
            ),

            SwitchListTile(
              title: Text("Receber notificações por SMS"),
              value: _valueSMS,
              onChanged: (bool valor) {
                setState(() {
                  _valueSMS = valor;
                });
              },
            )

            /*
            Text("Receber notificações por email"),
            Switch(
              value: _value,
              onChanged: (bool valor) {
                setState(() {
                  _value = valor;
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