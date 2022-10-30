import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redimm/model/categories_model.dart';
import 'package:redimm/resources/repository/cateogries_repository.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesState(categoryLoading: "true"));

  final categoryRepository = CategoriesRepository();

  fetchTopCategories() async {
    List<CategoriesModel> catList = [];
    await categoryRepository.fetchTopCategoriesRepo().then((value) {
      if (value.isNotEmpty) {
        catList.addAll(value);
        emit(state.copyWith(categoriesListt: catList));
        emit(state.copyWith(categoryLoadingg: "false"));
        print('catList $catList ${state.categoryLoading}');
      } else {
        emit(state.copyWith(categoryLoadingg: "true"));
      }
    });
  }
}
