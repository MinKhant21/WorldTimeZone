import 'package:flutter/material.dart';
import 'package:timezoneproject/services/world_time.dart';
class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  @override
  void initState(){
    print('init state');
    super.initState();
  }
  List<WorldTime> locations = [
    WorldTime(endurl: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(endurl: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(endurl: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(endurl: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(endurl: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(endurl: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(endurl: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(endurl: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];


  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDayTime': instance.isDayTime,
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body:ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
          return Padding(

          padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
          child: Card(
            child: ListTile(
              onTap: () {
              updateTime(index);
              },
              title: Text(locations[index].location),
              leading: CircleAvatar(
              backgroundImage: AssetImage('assets/${locations[index].flag}'),
              ),
            ),
          ),
            );
          }
          )
    );
  }
}
