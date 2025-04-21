// To parse this JSON data, do
//
//     final mealRecipe = mealRecipeFromJson(jsonString);

import 'dart:convert';

MealRecipe mealRecipeFromJson(String str) =>
    MealRecipe.fromJson(json.decode(str));

String mealRecipeToJson(MealRecipe data) => json.encode(data.toJson());

class MealRecipe {
  List<Map<String, String?>>? meals;

  MealRecipe({
    this.meals,
  });

  factory MealRecipe.fromJson(Map<String, dynamic> json) => MealRecipe(
        meals: json["meals"] == null
            ? []
            : List<Map<String, String?>>.from(json["meals"]!.map((x) =>
                Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
      );

  Map<String, dynamic> toJson() => {
        "meals": meals == null
            ? []
            : List<dynamic>.from(meals!.map((x) =>
                Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
      };
}
