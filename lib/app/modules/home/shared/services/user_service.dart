import 'package:dio/dio.dart';
import 'package:flutter_app/app/modules/home/shared/models/user_model.dart';

class UserService {
  final String _endpoint = "https://reqres.in/api/";
  final Dio _dio = Dio();

  Future<List<UserModel>> getAll() async {
    try {
      Response response = await _dio.get(_endpoint+"users?page=1");
      List<UserModel> result = (response.data["data"] as List)
            .map((i) => UserModel.fromJson(i))
            .toList();
      return result;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
    }
  }


}