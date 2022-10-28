part of 'stores_cubit.dart';

class StoreState {
  final String? storeLoading;
  final List<StoresModel>? storeList;
  final String? storeError;

  StoreState({
    this.storeLoading,
    this.storeList,
    this.storeError,
  });

  StoreState copyWith({
    final String? storeLoadingg,
    final List<StoresModel>? storeListt,
    final String? storeErrorr,
  }) {
    return StoreState(
        storeLoading: storeLoadingg ?? storeLoading,
        storeList: storeListt ?? storeList,
        storeError: storeErrorr ?? storeError);
  }
}
