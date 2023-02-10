// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:ubl/card.dart';
import 'package:ubl/dashbroad.dart';
import 'package:ubl/home.dart';
import 'package:ubl/tab.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.grey,
    ),
    debugShowCheckedModeBanner: false,
    home: Home (),
  ));
}
