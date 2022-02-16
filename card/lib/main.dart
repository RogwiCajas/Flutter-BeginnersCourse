import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

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

  Map _pets = new Map();
  void _getData() async {
    _pets.addAll({'0':'corgi', '1':'bobby', '2':'fido'});
  }
  @override
  Widget build(BuildContext context){
    //_getData();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Pets", style: new TextStyle(fontWeight: FontWeight.bold),),
              new Expanded(
                  child: new ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        String key = _pets.keys.elementAt(index);
                        return new Row(
                          children: <Widget>[
                            new Text("${key} : "),
                            new Text(_pets[key]),
                          ],
                        );
                      },
                      itemCount: _pets.length,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    _getData();
  }
}

