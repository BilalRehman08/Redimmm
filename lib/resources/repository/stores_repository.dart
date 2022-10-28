import 'package:redimm/model/stores_model.dart';
import 'package:redimm/resources/provider/stores_provider.dart';

class StoresRepository {
  final _provider = StoresProvider();

  Future<List<StoresModel>> fetchTopStores() {
    return _provider.fetchTopStores();
  }
}
