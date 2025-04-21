import 'package:appdid_task/categories/categories_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_meal_provider.g.dart';

final searchQueryProvider = StateProvider<String>((ref) => "");

@riverpod
class SearchNotifier extends _$SearchNotifier {
  @override
  Future<List<dynamic>> build(String searchString) {
    return CategoriesRepository().searchMeal(searchString);
  }
}
