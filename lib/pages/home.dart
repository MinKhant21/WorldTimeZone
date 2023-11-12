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
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;
    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/day/${bgImage}'),
              fit: BoxFit.fill
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async{
                      // Handle button press
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      if(result != null){
                        setState(() {
                          data = {
                            'time': result['time'],
                            'location': result['location'],
                            'isDayTime': result['isDayTime'],
                            'flag': result['flag']
                          };
                        });
                      }

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
        ),
    );
  }
}
