import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redimm/model/user_model.dart';
import 'package:redimm/resources/repository/user_repository.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState(userLoading: true));

  UserRepository user = UserRepository();

  getUser() async {
    await user.fetchUserRepo().then((value) {
      if (value != null) {
        emit(state.copyWith(userLoadingg: false));
        emit(state.copyWith(userModell: value));
      } else {
        emit(state.copyWith(userLoadingg: true));
      }
    });
  }
}
