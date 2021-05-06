//import flutter packages
//import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
//
//import own packages/files
//

class MySQLConnectService {
  // Constructor
  MySQLConnectService();

  // Connect to db_tearrific MySQL Database on Google Cloud
  // ------------------------------------------------------
  Future<MySqlConnection> mySQLConnect() async {
    print('connecting to database ...');
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: '35.188.216.13',
        port: 3306,
        user: 'tearrific',
        password: 'opaHFjs07eB7j8dm',
        db: 'db_tearrific'));

    print('reading database to verify connection ...');
    var results = await conn.query(
        'select p.No, c.Name, p.Name, p.Currency, p.Buy_Price from Product_Categories c, Products p where p.Product_Category = c.No order by p.No;');
    for (var row in results) {
      print(
          'No: ${row[0]}, Category: ${row[1]}, Product Name: ${row[2]}, Currency: ${row[3]}, Buy Price: ${row[4]}');
    }

    print('closing database');
    await conn.close();

    return conn;
  }

  //Future<bool> mySQLDisconnect() async {
  //  await conn.close();
  //  return true;
  //}
}

final MySQLConnectService mySQLConnectService = MySQLConnectService();
