import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('My first App'),
    ),
    body: Center(
      child:Text("my body"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: Text('click'),
    ),
  ),
));