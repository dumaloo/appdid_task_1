import 'dart:convert';

import 'package:http/http.dart' as http;

class RecipeRepository {
  Future<List<dynamic>> recipeByMeals(String mealId) async {
    try {
      final response = await http.get(Uri.parse(
          "https://www.themealdb.com/api/json/v1/1/lookup.php?i=$mealId"));

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body);
        final jsonList = jsonMap["meals"];
        // final list = jsonList.map((json) => Meal.fromJson(json)).toList();

        print(jsonList);

        // return list;
        return jsonList.toList();
      } else {
        throw Exception("Error Fetching Recipe : ${response.statusCode}");
      }
    } catch (e) {
      print("Error Fetching Meals : $e");
      rethrow;
    }
  }

  Future<List<dynamic>> randomMeal() async {
    try {
      final response = await http
          .get(Uri.parse("https://www.themealdb.com/api/json/v1/1/random.php"));

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body);
        final jsonList = jsonMap["meals"];
        // final list = jsonList.map((json) => Meal.fromJson(json)).toList();

        // return list;
        return jsonList.toList();
      } else {
        throw Exception("Error Fetching Recipe : ${response.statusCode}");
      }
    } catch (e) {
      print("Error Fetching Recipe : $e");
      rethrow;
    }
  }
}
