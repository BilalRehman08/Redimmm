part of 'categories_cubit.dart';

class CategoriesState {
  final String? categoryLoading;
  final List<CategoriesModel>? categoriesList;
  final String? categoryError;

  CategoriesState({
    this.categoryLoading,
    this.categoriesList,
    this.categoryError,
  });

  CategoriesState copyWith({
    final String? categoryLoadingg,
    final List<CategoriesModel>? categoriesListt,
    final String? categoryErrorr,
  }) {
    return CategoriesState(
        categoryLoading: categoryLoadingg ?? categoryLoading,
        categoriesList: categoriesListt ?? categoriesList,
        categoryError: categoryErrorr ?? categoryError);
  }
}
