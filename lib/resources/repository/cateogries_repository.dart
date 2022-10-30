import 'package:redimm/model/categories_model.dart';
import 'package:redimm/resources/provider/categories_provider.dart';

class CategoriesRepository {
  final _provider = CategoriesProvider();

  Future<List<CategoriesModel>> fetchTopCategoriesRepo() {
    return _provider.fetchTopCategories();
  }
}
