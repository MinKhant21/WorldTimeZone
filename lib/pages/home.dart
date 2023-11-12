import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            // Handle button press
            Navigator.pushNamed(context, '/location');
          },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.edit),
                SizedBox(width: 8.0), // Add some space between icon and text
                Text('Edit Location'),
              ],
            ),
          ),
        ),
    );
  }
}
