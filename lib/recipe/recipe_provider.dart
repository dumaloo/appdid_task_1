import 'package:appdid_task/recipe/recipe_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_provider.g.dart';

@riverpod
class RecipeNotifier extends _$RecipeNotifier {
  @override
  Future<List<dynamic>> build(String mealId) {
    return RecipeRepository().recipeByMeals(mealId);
  }
}
