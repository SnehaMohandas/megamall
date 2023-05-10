import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

var products;

final categoryUrl =
    Uri.parse("https://run.mocky.io/v3/02f45ae4-aecc-442e-b094-8bea4f450360");

getCategories() async {
  final response = await http.get(categoryUrl);

  try {
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      products = data;
    }
  } catch (e) {
    Get.snackbar("Errror", e.toString());
  }

  return products;
}
