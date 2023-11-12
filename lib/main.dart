import 'package:flutter/material.dart';
import 'package:timezoneproject/pages/home.dart';
import 'package:timezoneproject/pages/loading.dart';
import 'package:timezoneproject/pages/choose_location.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/location' : (context) => Location(),
  },
));