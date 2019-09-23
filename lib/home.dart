import 'package:entradadados/campoTexto.dart';
import 'package:entradadados/myRadios.dart';
import 'package:entradadados/mycheckbox.dart';
import 'package:entradadados/myslider.dart';
import 'package:entradadados/myswitch.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curso Flutter"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            RaisedButton(
              color: Colors.blue,
              child: Text("Campos de texto", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CampoTexto("Lucas Moreira")
                  )
                );
              },
            ),

            RaisedButton(
              color: Colors.green,
              child: Text("Checkboxes", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyCheckbox()
                  )
                );
              },
            ),

            RaisedButton(
              color: Colors.amber,
              child: Text("Radios", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyRadios()
                  )
                );
              },
            ),

            RaisedButton(
              color: Colors.deepOrange,
              child: Text("Sliders", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySlider()
                  )
                );
              },
            ),

            RaisedButton(
              color: Colors.cyan,
              child: Text("Switches", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySwitches()
                  )
                );
              },
            )

          ],
        ),
      ),
    );
  }
}