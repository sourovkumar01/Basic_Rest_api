import 'package:basic_rast/produc_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrudApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      theme:ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:Colors.deepPurple,
          foregroundColor: Colors.white
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(),
          errorBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        )
      ) ,

      home:Produc_list(),
    );
  }
}