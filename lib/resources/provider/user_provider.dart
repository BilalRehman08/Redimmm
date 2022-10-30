import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:redimm/model/User_model.dart';

class UserProvider {
  final Dio _dio = Dio();
  final String _url = 'https://qa-test-task.nestmart.co/api/v1/userinfo/7';

  fetchUser() async {
    try {
      Response response = await _dio.get(_url,
          options: Options(headers: {
            'x-api-key': '7610ed17b516d04629f55a715dca9c64104d00d9',
            'Authorization':
                'Bearer \$2y\$10\$J1quOsaM9A4GOOBJ94.JoupJkdAcKS3tyeDwo.qRYkJ2D0Ev4iCuW'
          }));
      if (response.data != null) {
        print("object ${response.data['data']['user'][0]}");
        return UserModel.fromJson(response.data['data']['user'][0]);
      } else {
        return UserModel.fromJson({'error': "Connection Failed"});
      }
    } catch (error, stacktrace) {
      debugPrint("Exception occured: $error stackTrace: $stacktrace");
      return UserModel.fromJson({'error': "Connection Failed"});
    }
  }
}
