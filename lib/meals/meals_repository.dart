import 'dart:convert';

import 'package:appdid_task/meals/meals_model.dart';
import 'package:http/http.dart' as http;

class MealsRepository {
  Future<List<Meal>> mealsByCategory(String categoryName) async {
    try {
      final response = await http.get(Uri.parse(
          "https://www.themealdb.com/api/json/v1/1/filter.php?c=$categoryName"));

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body);
        final jsonList = jsonMap["meals"];

        final list = jsonList.map<Meal>((json) => Meal.fromJson(json)).toList();

        return list;
      } else {
        throw Exception("Error Fetching Meals : ${response.statusCode}");
      }
    } catch (e) {
      print("Error Fetching Meals : $e");
      rethrow;
    }
  }
}
