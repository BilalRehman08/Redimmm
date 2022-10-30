part of 'user_cubit.dart';

class UserState {
  final bool? userLoading;
  final Map? userModel;
  final String? userError;

  UserState({this.userLoading, this.userModel, this.userError});

  UserState copyWith({
    final bool? userLoadingg,
    final Map? userModell,
    final String? userErrorr,
  }) {
    return UserState(
        userLoading: userLoadingg ?? userLoading,
        userModel: userModell ?? userModel,
        userError: userErrorr ?? userError);
  }
}
