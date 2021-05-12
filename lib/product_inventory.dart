// importing google platform packages
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:flip_card/flip_card.dart';

//importing own library
import 'package:tearrific/drawer.dart';

Widget readProductInventory(BuildContext context, dynamic conn) {
  final int a = 1;
  print(a);
  return Scaffold(
    appBar: AppBar(
      title: new Text(
        "Product Inventory",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      centerTitle: true,
    ),
    drawer: showMenuDrawer(context),
    body: Container(
      child: Text('Product Inventory'),
      color: Colors.blue[200],
      padding: EdgeInsets.all(10.10),
    ),
  );
}
