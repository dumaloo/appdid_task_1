import 'package:appdid_task/meals/meals_model.dart';
import 'package:appdid_task/meals/meals_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meals_provider.g.dart';

@riverpod
class MealsNotifier extends _$MealsNotifier {
  @override
  Future<List<Meal>> build(String categoryName) {
    return MealsRepository().mealsByCategory(categoryName);
  }
}
