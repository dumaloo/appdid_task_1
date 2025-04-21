// To parse this JSON data, do
//
//     final mealByCategory = mealByCategoryFromJson(jsonString);

import 'dart:convert';

MealByCategory mealByCategoryFromJson(String str) =>
    MealByCategory.fromJson(json.decode(str));

String mealByCategoryToJson(MealByCategory data) => json.encode(data.toJson());

class MealByCategory {
  List<Meal> meals;

  MealByCategory({
    required this.meals,
  });

  factory MealByCategory.fromJson(Map<String, dynamic> json) => MealByCategory(
        meals: List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map((x) => x.toJson())),
      };
}

class Meal {
  String strMeal;
  String strMealThumb;
  String idMeal;

  Meal({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
  });

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        strMeal: json["strMeal"],
        strMealThumb: json["strMealThumb"],
        idMeal: json["idMeal"],
      );

  Map<String, dynamic> toJson() => {
        "strMeal": strMeal,
        "strMealThumb": strMealThumb,
        "idMeal": idMeal,
      };
}
