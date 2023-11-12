import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime {
  String? time ;
  bool? isDayTime;
  String endurl;
  String flag;
  String location;
  WorldTime({required this.endurl,required this.location, required this.flag});

  Future<void> getTime() async
  {
    Uri url = Uri.parse("http://worldtimeapi.org/api/timezone/${endurl}");
    http.Response response =  await http.get(url);
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
    time = DateFormat.jm().format(now);
  }


}
