import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {

  // Este tipo é definido pelo tipo dos values dos radios que usam este groupValue
  double _value = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text( (_value.round()).toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
            ),

            Slider(
              value: _value,
              min: 0,
              max: 100,
              label: (_value.round()).toString(),
              divisions: 10,
              activeColor: Colors.deepOrange,
              onChanged: (double valor) {
                setState(() {
                  _value = valor;
                });
              },
            ),

          ],
        ),
      )
    );
  }
}