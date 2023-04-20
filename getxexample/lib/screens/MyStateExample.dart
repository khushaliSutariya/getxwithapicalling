import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/MyStateExampleController.dart';

class MyStateExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyStateExampleController c = Get.put(MyStateExampleController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Obx(() => Column(
            children: [
              Text(c.count.toString()),
              TextField(
                controller: c.num,
              ),
              ElevatedButton(
                  onPressed: () {
                    c.calculate();
                  },
                  child: Text("Click Me"))
            ],
          )),
    );
  }
}
