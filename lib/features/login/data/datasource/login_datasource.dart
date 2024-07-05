import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:promilio_proj/features/login/data/api_response_model.dart';

abstract class LoginDatasource {
  Future<bool> authUser({required String username, required String password});
}

class LoginSource implements LoginDatasource {
  @override
  Future<bool> authUser(
      {required String username, required String password}) async {
    try {
      final api = "https://apiv2stg.promilo.com/user/oauth/token";
      final uri = Uri.parse(api);
      // http.post(uri,body: ,headers: ,);
      final dio = Dio();
      password = sha256.convert(utf8.encode(password)).toString();
      final formData = FormData.fromMap({
        'username': username,
        'password': password,
        'grant_type': 'password',
      });

      final response = await dio.post(api,
          data: formData,
          options: Options(headers: {
            "Authorization": "Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg=="
          }));
      final apiResponse = ApiResponseModel.fromJson(response.data);
      if (apiResponse.status.code == 200) {
        return Future.value(true);
      } else {
        return Future.value(false);
      }
        // return Future.value(true);
    } on DioException catch (e) {
      final apiResponse = ApiResponseModel.fromJson(e.response?.data);
      // print("resp message ${apiResponse.status.code}"
      //     " ${apiResponse.status.message}");
      if (e.response!.statusCode == 401) {
        print(e.response!.statusMessage);
      }
      // return Future.error("Invalid Passwoord");
      return false;
    } on Exception catch (e) {
      // print("dio error $e");
      // return Future.error("die error");
      return false;
    }
  }
}
