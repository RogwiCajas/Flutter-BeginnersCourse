import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  double _val = 0.0;
  void _setValue(double val) => setState(() => _val = val);
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Value: ${ (_val * 100).round()}"),
              new Slider(value: _val, onChanged: _setValue,activeColor: Colors.pinkAccent,),
            ],
          ),
        ),
      ),
    );
  }
}