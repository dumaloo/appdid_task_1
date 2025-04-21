import 'package:appdid_task/recipe/recipe_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

class RecipeDetailsScreen extends ConsumerWidget {
  final String mealId;
  final String mealName;
  const RecipeDetailsScreen(
      {super.key, required this.mealId, required this.mealName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = ref.watch(recipeNotifierProvider(mealId));
    return Scaffold(
      appBar: AppBar(
        title: Text("$mealName : Recipe"),
      ),
      body: recipe.when(
        data: (data) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Image.network(data[0]["strMealThumb"])),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Text("Meal Name: ${data[0]["strMeal"]}")),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text("Meal Category: ${data[0]["strCategory"]}")),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Text("Meal Area: ${data[0]["strArea"]}")),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Instructions"),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Text(data[0]["strInstructions"] ?? "N/A")),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Text("Recipe")),
                  const SizedBox(
                    height: 10,
                  ),
                  for (int i = 1; i <= 20; i++) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data[0]["strIngredient$i"] ?? "N/A",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          data[0]["strMeasure$i"] ?? "N/A",
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                  ElevatedButton(
                      onPressed: () {
                        Share.share(
                            'Check out my recipe : ${data[0]["strYoutube"]}');
                      },
                      child: Text("Share Recipe YT video"))
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: () {
          return Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
