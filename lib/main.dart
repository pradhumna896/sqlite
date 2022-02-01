import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'dbhelper.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // ignore: non_constant_identifier_names

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final dbhelper = Databasehelper.instance;
  void insertdata() async {
    Map<String, dynamic> row = {
      Databasehelper.columnName: "pradhumna",
      Databasehelper.columnAge: 23
    };
    final id = await dbhelper.insert(row);
    print("id");
  }

  void queryall() async {
    var allrows = await dbhelper.queryall();
    allrows.forEach((row) {
      print(row);
    });
  }

  void queryspecific() async {
    var allrows = await dbhelper.queryspecific(18);
    print(allrows);
  }

  void delete() async {
    var id = await dbhelper.deletedata(2);
    print(id);
  }

  void update() async {
    var row = await dbhelper.update(2);
    print(row);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      home: Scaffold(
        appBar: AppBar(title: Text("my app")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: insertdata,
                color: Colors.purple,
                child: Text('insert'),
              ),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              RaisedButton(
                  color: Colors.green,
                  child: Text('query'),
                  onPressed: queryall),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              RaisedButton(
                  color: Colors.green,
                  child: Text('Query specific'),
                  onPressed: queryspecific),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              RaisedButton(
                  color: Colors.grey, child: Text("update"), onPressed:update),
              RaisedButton(
                  color: Colors.red, child: Text('delete'), onPressed: delete),
            ],
          ),
        ),
      ),
    );
  }
}
