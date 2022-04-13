import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManager {

  Dio dio = Dio();

  ApiManager(){
    dio.options.baseUrl="https://";
  }

}