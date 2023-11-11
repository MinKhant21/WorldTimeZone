import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Home(),
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("My ID Card !"),
        centerTitle: true,
        backgroundColor:Colors.grey[600],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://thewellesleynews.com/wp-content/uploads/2020/09/avatar.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 60,
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 5.0
                )
              ),
              SizedBox(height: 10.0),
              Text(
                  'Kaung Min Khant',
                  style: TextStyle(
                      color: Colors.amber,
                      letterSpacing: 5.0,
                      fontSize: 25
                  )
              ),
              SizedBox(height: 30.0),
              Text(
                  'Current Skill Level',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 5.0
                  )
              ),
              SizedBox(height: 10.0),
              Text(
                  '10',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  )
              ),
              SizedBox(height: 30.0),
             Row(
               children: [
                 Icon(
                    Icons.mail,
                    color: Colors.grey,
                 ),
                 SizedBox(width: 10.0),
                 Text(
                     'kmk@gmail.com',
                   style: TextStyle(
                     color:Colors.grey[400],
                     letterSpacing: 5,
                   ),
                 )
               ],
             )
            ],
        ),
      ),
    );
  }
}
