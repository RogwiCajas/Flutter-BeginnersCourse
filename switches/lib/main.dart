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

  bool _val1 = false;
  bool _val2 = false;

  void _onChanged1(bool value) => setState(() => _val1 = value);
  void _onChanged2(bool value) => setState(() => _val2 = value);

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Switch(value: _val1, onChanged: _onChanged1),
              new SwitchListTile(
                  value: _val2,
                  onChanged: _onChanged2,
                  title: new Text(
                    "Switch:",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: new Icon(Icons.adjust_sharp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

