import 'package:flutter/material.dart';
import 'package:timezoneproject/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTimeData() async{
    WorldTime worldTime = WorldTime(endurl:'Asia/Yangon');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'time' : worldTime.time,
      'location' : 'yangon'
    });
  }

  @override
  void initState(){
    super.initState();
    getTimeData();
    print('loading');
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text('loading')),
    );
  }
}
