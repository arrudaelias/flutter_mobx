import 'package:dio/dio.dart';
import 'package:flutter_app/app/modules/home/shared/models/user_model.dart';

class UserService {
  final String _endpoint = "https://reqres.in/api/";
  final Dio _dio = Dio();

  Future<UserResponse> getAll() async {
    try {
      Response response = await _dio.get(_endpoint+"users?page=1");
      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return UserResponse.withError("$error");
    }
  }


}