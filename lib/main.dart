import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import './note.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
 

  // ignore: non_constant_identifier_names



  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "name",
                    hintText: 'enter name'),
              ),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "email",
                    hintText: 'enter email'),
              ),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: 'enter Password'),
              ),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context)=>Note()),
                    );
                  },
                  child: Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}
