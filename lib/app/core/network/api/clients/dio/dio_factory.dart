import 'package:dio/dio.dart';
import 'package:fixithub/app/app_constants.dart';
import 'package:fixithub/app/core/local_storage/local_storage_helper.dart';
import 'package:fixithub/app/core/network/api/api_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


const String contentType = "content-type";
const String applicationJson = "application/json";
const String accept = "accept";
const String authorization = "authorization";
const String defaultLanguage = "accept-language";

class DioFactory {
 final LocalStorageHelper _localStorage;

  DioFactory({required LocalStorageHelper localStorage}) : _localStorage = localStorage;



  Dio getDio() {
    final Dio dio = Dio();

    final String language = AppConstants.defaultAppLanguage; //TODO: edit this will the app settings;
    final Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: AppConstants.token ,//TODO : should edit with the one in localstorage,
      defaultLanguage: language,
    };

    dio.options = BaseOptions(
      baseUrl: ApiRoutes.baserUrl,
      headers: headers,
      receiveTimeout: AppConstants.apiTimeOut,
      sendTimeout: AppConstants.apiTimeOut,
    );

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ));
    }

    return dio;
  }
}
