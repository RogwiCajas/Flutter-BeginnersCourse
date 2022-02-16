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
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

  void _setValue(String value) => setState(() => _value = value);
  void _showbar(){
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text(_value),));
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      key: _scaffoldstate,
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Body"),
              new RaisedButton(onPressed: _showbar, child: new Text('click me to show the name'),),
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Enter your name: ',
                  icon: new Icon(Icons.people),
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onSubmitted: _setValue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

