import 'package:appdid_task/categories/categories_model.dart';
import 'package:appdid_task/categories/categories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_provider.g.dart';

@riverpod
class CategoriesNotifier extends _$CategoriesNotifier {
  @override
  Future<List<Category>> build() {
    return CategoriesRepository().getAllCategories();
  }
}
