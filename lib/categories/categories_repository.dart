import 'dart:convert';

import 'package:appdid_task/categories/categories_model.dart';
import 'package:http/http.dart' as http;

class CategoriesRepository {
  Future<List<Category>> getAllCategories() async {
    try {
      final response = await http.get(
          Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php"));

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body);
        final jsonList = jsonMap["categories"];

        final list =
            jsonList.map<Category>((json) => Category.fromJson(json)).toList();

        return list;
      } else {
        throw Exception("Error Fetching Categories : ${response.statusCode}");
      }
    } catch (e) {
      print("Error Fetching Categories : $e");
      rethrow;
    }
  }

  Future<List<dynamic>> searchMeal(String searchString) async {
    try {
      final response = await http.get(Uri.parse(
          "https://www.themealdb.com/api/json/v1/1/search.php?s=$searchString"));

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body);
        final jsonList = jsonMap["meals"];

        if (jsonList != null) {
          return jsonList.toList();
        } else {
          return [];
        }
      } else {
        throw Exception("Error Fetching Recipe : ${response.statusCode}");
      }
    } catch (e) {
      print("Error Fetching Recipe : $e");
      rethrow;
    }
  }
}
// 'https://www.themealdb.com/api/json/v1/1/categories.php'
