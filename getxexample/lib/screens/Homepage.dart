import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexample/screens/SecondScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              //Get.to(SecondScreen());
              Get.off(SecondScreen());
            },
            child: Text("Redirect"))
      ]),
    );
  }
}
