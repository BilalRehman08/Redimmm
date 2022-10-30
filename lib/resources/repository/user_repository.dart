import 'package:redimm/model/user_model.dart';
import 'package:redimm/resources/provider/User_provider.dart';

class UserRepository {
  final _provider = UserProvider();

  fetchUserRepo() {
    return _provider.fetchUser();
  }
}
