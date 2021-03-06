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
  String _value = '';
  void _onClick() => setState(() => _value = new DateTime.now().toString());

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.pinkAccent,
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: _onClick,
          backgroundColor: Colors.pinkAccent,
          mini: false,
          child: new Icon(Icons.timer_sharp),

      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
            ],
          ),
        ),
      ),
    );
  }
}

