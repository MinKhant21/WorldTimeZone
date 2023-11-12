import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTimeData() async{
    Uri url = Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Yangon");
     http.Response response =  await http.get(url);
     print(response.body);
  }

  @override
  void initState(){
    super.initState();
    getTimeData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Text('loading'),
    );
  }
}
