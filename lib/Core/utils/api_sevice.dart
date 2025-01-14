import 'package:dio/dio.dart';

class ApiSevice {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiSevice(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
