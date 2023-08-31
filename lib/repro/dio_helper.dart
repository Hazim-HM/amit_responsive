import 'package:dio/dio.dart';
import 'package:finalamitproject/repro/end_points.dart';

class DioHelper {
  static late Dio dio;

  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl:baseUrl
        
      )
    );
  }
}