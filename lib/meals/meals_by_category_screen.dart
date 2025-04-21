import 'package:appdid_task/meals/meals_provider.dart';
import 'package:appdid_task/recipe/recipe_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MealsByCategoryScreen extends ConsumerWidget {
  final String categoryName;
  const MealsByCategoryScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meals = ref.watch(mealsNotifierProvider(categoryName));
    return Scaffold(
      appBar: AppBar(
        title: Text("$categoryName :  Meals"),
      ),
      body: meals.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final meal = data[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MealsCard(
                    imgUrl: meal.strMealThumb,
                    title: meal.strMeal,
                    mealId: meal.idMeal),
              );
            },
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

class MealsCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String mealId;
  const MealsCard(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.mealId});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return RecipeDetailsScreen(mealId: mealId, mealName: title);
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Img
            Image.network(
              imgUrl,
            ),
            // Title
            Text(title),
          ],
        ),
      ),
    );
  }
}
