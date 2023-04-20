import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexample/screens/FakeProductList.dart';
import 'package:getxexample/screens/Homepage.dart';
import 'package:getxexample/screens/MyStateExample.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: FakeProductList(),
  ));
}
