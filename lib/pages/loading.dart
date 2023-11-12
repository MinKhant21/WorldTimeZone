import 'package:flutter/material.dart';
import 'package:timezoneproject/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTimeData() async{
    WorldTime worldTime = WorldTime(endurl:'Asia/Yangon',location:'Yangon',flag: 'mm');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'time' : worldTime.time,
      'location' : worldTime.location,
      'isDayTime' : worldTime.isDayTime
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
      body: Container(
        color: Colors.grey[500],
        child:SpinKitFoldingCube(
          color: Colors.black45,
          size: 80.0,
        ),
      ),
    );
  }
}
