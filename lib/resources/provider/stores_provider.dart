import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:redimm/model/stores_model.dart';

class StoresProvider {
  final Dio _dio = Dio();
  final String _url = 'https://qa-test-task.nestmart.co/api/v1/storelist/en';

  Future<List<StoresModel>> fetchTopStores() async {
    List<StoresModel> storesList = [];
    try {
      Response response = await _dio.get(_url,
          options: Options(headers: {
            'x-api-key': '7610ed17b516d04629f55a715dca9c64104d00d9',
            'Authorization':
                'Bearer \$2y\$10\$J1quOsaM9A4GOOBJ94.JoupJkdAcKS3tyeDwo.qRYkJ2D0Ev4iCuW'
          }));
      if (response.data != null) {
        for (var data in response.data['data']['stores']) {
          storesList.add(StoresModel.fromJson(data));
        }
      }
      return storesList;
    } catch (error, stacktrace) {
      debugPrint("Exception occured: $error stackTrace: $stacktrace");
      return storesList;
    }
  }
}
