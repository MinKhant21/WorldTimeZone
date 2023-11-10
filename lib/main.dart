import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
 const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
            backgroundColor: const Color.fromARGB(255, 172, 125, 121),
          ),
          body: Center(
            child:Text(
              "my hah",
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
            backgroundColor: Colors.red[600],
            child: Text('click'),
          ),
        );
  }
}