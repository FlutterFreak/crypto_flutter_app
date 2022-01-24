import 'package:crypto_flutter_app/models/coinDetailsResponseModel.dart';
import 'package:crypto_flutter_app/models/getCurrentPriceResponseModel.dart';
import 'package:crypto_flutter_app/network/error/network_exceptions.dart';
import 'package:crypto_flutter_app/network/result/api_result.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../network/api_client.dart';

class ApiRepository {
  late ApiClient apiClient;

  ApiRepository() {
    var _dio = Dio();
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: true,
          request: true,
          requestBody: true));
    }
    apiClient = ApiClient(_dio, baseUrl: 'https://api.coingecko.com/api/v3/');
  }

  Future<ApiResult<T>> baseApiResultMethod<T>(Future<T> response) async {
    try {
      return ApiResult.success(data: await response);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<List<CoinDetailsResponseModel>>> getCoinList(
      String? vsCurrency, int? perPage) async {
    return baseApiResultMethod(apiClient.getCoinList(vsCurrency, perPage));
  }

  Future<ApiResult<CoinCurrentPrice>> getCurrentPrice(
      String? vsCurrency, String? id) async {
    return baseApiResultMethod(apiClient.getCurrentPrice(id, vsCurrency));
  }
}
