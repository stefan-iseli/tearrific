// importing google platform packages
import 'package:flutter/material.dart';

//importing own library

Widget showMenuDrawer(BuildContext context) {
  return Drawer(
    child: new ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            padding: EdgeInsets.all(10.0),
            duration: Duration(seconds: 2),
            curve: Curves.bounceInOut,
            decoration: BoxDecoration(
              color: Colors.white,
              image: const DecorationImage(
                image: AssetImage('assets/tearrific_small.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            child: Container(
              width: 50,
              height: 60,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            )),
        ListTile(
          leading: Icon(Icons.brush),
          title: Text('Products'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => null,
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.library_books),
          title: Text('Accounting Journal'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => null,
              ),
            );
          },
        ),
        Divider(
          color: Colors.grey[300],
          height: 15.0,
          thickness: 3.0,
          indent: 5.0,
          endIndent: 5.0,
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Profile/Account'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => null,
              ),
            );
          },
        ),
        Divider(
          color: Colors.grey[500],
          height: 15.0,
          thickness: 5.0,
          indent: 5.0,
          endIndent: 5.0,
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Sign-out'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => null,
              ),
            );
          },
        ),
      ],
    ),
  );
}
