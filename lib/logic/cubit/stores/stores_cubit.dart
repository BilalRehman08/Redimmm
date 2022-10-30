import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redimm/model/stores_model.dart';
import 'package:redimm/resources/repository/stores_repository.dart';

part 'stores_state.dart';

class StoresCubit extends Cubit<StoreState> {
  StoresCubit() : super(StoreState(storeLoading: "true"));

  final storeRepository = StoresRepository();

  fetchTopStores() async {
    List<StoresModel> storeList = [];
    await storeRepository.fetchTopStoresRepo().then((value) {
      if (value.isNotEmpty) {
        storeList.addAll(value);
        emit(state.copyWith(storeListt: storeList));
        emit(state.copyWith(storeLoadingg: "false"));
        print('storeList $storeList ${state.storeLoading}');
      } else {
        emit(state.copyWith(storeLoadingg: "true"));
      }
    });
  }
}
