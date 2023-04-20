import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexample/resources/UrlResources.dart';
import 'package:http/http.dart' as http;

import '../model/Product.dart';

class ProductController extends GetxController {
  RxList alldata = [].obs;
  RxBool isloading = false.obs;

  @override
  void onInit() {
    getdata();
  }

  getdata() async {
    isloading(true);
    Uri url = Uri.parse(UrlResources.PRODUCT_LIST);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body.toString());
      List<Product> tempdata =
          json["data"].map<Product>((obj) => Product.fromJson(obj)).toList();
      alldata.addAll(tempdata);
      isloading(false);
    }
  }
}
