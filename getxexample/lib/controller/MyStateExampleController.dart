import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyStateExampleController extends GetxController {
  RxString count = "-".obs;

  TextEditingController num = TextEditingController();

  calculate() {
    count.value = num.text.toString();
  }
}
