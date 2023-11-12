import 'package:flutter/material.dart';
import 'quatedata.dart';
void main () => runApp(MaterialApp(
  home: Quate(),
));

class Quate extends StatefulWidget {
  const Quate({super.key});

  @override
  State<Quate> createState() => _QuateState();
}

class _QuateState extends State<Quate> {
  List<QuateData> quates = [
     QuateData(name:'a',age: 23, location:'mdy'),
     QuateData(name:'b',age: 23, location:'mdy'),
     QuateData(name:'c',age: 23, location:'mdy'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Quate'),
        centerTitle: true,
      ),
      body: Column(
        children:quates.map((quate) => Text('${quate.name} - ${quate.age} - ${quate.location}')).toList(),
      ),
    );
  }
}
