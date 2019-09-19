import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {

  bool _checkbox = true;
  bool _checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Checkboxes"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Column(
                children: <Widget>[

                  CheckboxListTile( // Ou apenas o Checkbox (sem o title) para ter apenas o quadradinho
                    title: Text("Teste de checkbox"),
                    subtitle: Text("Teste de subtítulo"),
                    secondary: Icon(Icons.account_circle),
                    activeColor: Colors.green,
                    value: _checkbox,
                    onChanged: (bool valor) {
                      setState(() {
                        _checkbox = valor;
                      });
                    },
                  ),

                  CheckboxListTile(
                    title: Text("Segundo checkbox"),
                    subtitle: Text("Segundo subtítulo"),
                    secondary: Icon(Icons.add_a_photo),
                    activeColor: Colors.green,
                    value: _checkbox2,
                    onChanged: (bool valor2) {
                      setState(() {
                        _checkbox2 = valor2;
                      });
                    },
                  )

                ],
              ),
            ),
            RaisedButton(
              color: Colors.green,
              onPressed: () {
                setState(() {
                  _checkbox = !_checkbox;
                  _checkbox2 = !_checkbox2;
                });
              },
              child: Text("Toggle checkboxes", style: TextStyle(color: Colors.white),),
            )

          ],
        ),
      )
    );
  }
}