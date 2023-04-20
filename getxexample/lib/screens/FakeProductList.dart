import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/ProductController.dart';

class FakeProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductController c = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: Obx(() => (c.isloading == true)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: c.alldata.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(c.alldata[index].pname.toString()),
                );
              },
            )),
    );
  }
}
