import 'package:dio/dio.dart';

import 'Covid_19.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = 'https://api.covid19api.com/summary';

  Future<Covid_19> fetchCovidList() async {
    try {
      Response response = await _dio.get(_url);
      return Covid_19.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return Covid_19.withError("Data not found / Connection issue");
    }
  }
}