import 'package:appdid_task/recipe/recipe_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'random_meal_provider.g.dart';

@riverpod
class RandomMealNotifier extends _$RandomMealNotifier {
  @override
  Future<List<dynamic>> build() {
    return RecipeRepository().randomMeal();
  }
}
