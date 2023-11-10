import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('My first App'),
      backgroundColor: const Color.fromARGB(255, 172, 125, 121),
    ),
    body: Center(
      child:Text(
        "my body",
        style:TextStyle(
            color: Colors.red[600],
            fontFamily: 'IndieFlower',
            fontSize: 60,
            fontWeight: FontWeight.bold,
            letterSpacing: 12,
          ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: Text('click'),
    ),
  ),
));