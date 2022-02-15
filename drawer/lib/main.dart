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
  String _value = "";
  void _setValue() => setState(() => _value = new DateTime.now().toString());
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text("Drawer"),
              new RaisedButton(onPressed: () => Navigator.pop(context), child: new Text('close'),),
              new RaisedButton(onPressed: _setValue, child: new Text('Write actual date'),)
            ],
          ),
        ),
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

