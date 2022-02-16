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
              new Text('Image Demo'),
              new Expanded(
                child: new Image.asset('images/img.png'),
              ),
              new Expanded(
                child: new Image.network('https://cdn-icons-png.flaticon.com/512/3135/3135768.png'),
              ),
              new Expanded(
                child: new Image.network('https://cdn-icons-png.flaticon.com/512/3135/3135768.png'),
              ),
              new Expanded(
                child: new Image.network('https://cdn-icons-png.flaticon.com/512/3135/3135768.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

