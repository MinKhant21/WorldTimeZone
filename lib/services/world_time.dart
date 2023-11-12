import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime {
  String? time ;
  String endurl;
  WorldTime({required this.endurl});

  Future<void> getTime() async
  {
    Uri url = Uri.parse("http://worldtimeapi.org/api/timezone/${endurl}");
    http.Response response =  await http.get(url);
    Map resData = jsonDecode(response.body);
    DateTime datetime = DateTime.parse(resData['datetime']);
    String formattedDateTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(datetime);
     time = formattedDateTime;
     // print(formattedDateTime.runtimeType);
  }


}
