import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;
    print(data);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
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
                SizedBox(height: 20),

                Text(
                    data['location'],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                ),
                SizedBox(height: 20),
                Text(
                    data['time'],
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,

                    )
                )
              ],
            ),
          ),
        ),
        ),
    );
  }
}
