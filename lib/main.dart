import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
//import 'package:mysql1/mysql1.dart';
import 'package:tearrific/sql.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _conn = mySQLConnectService.mySQLConnect();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tearrific',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(sql: _conn),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.sql}) : super(key: key);
  final Future<MySqlConnection> sql;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Soon you will see product information here ...',
            ),
          ],
        ),
      ),
    );
  }
}
