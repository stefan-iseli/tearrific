// import standard libraries
import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'package:google_fonts/google_fonts.dart';

// import own libraries
import 'package:tearrific/sql.dart';
import 'package:tearrific/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // connect to MySQL database db_tearrific
  final Future<MySqlConnection> _conn = mySQLConnectService.mySQLConnect();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tearrific",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue,
        accentColor: Colors.blueAccent,
        textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: new Text(
            "Tearrific",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          centerTitle: true,
        ),
        drawer: showMenuDrawer(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Product Information to come soon',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
