import 'package:crypto_flutter_app/models/coinDetailsResponseModel.dart';
import 'package:crypto_flutter_app/models/getCurrentPriceResponseModel.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.coingecko.com/api/v3/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("coins/markets")
  Future<List<CoinDetailsResponseModel>> getCoinList(
    @Query('vs_currency') String? vsCurrency,
    @Query('per_page') int? perPage,
  );

  @GET("simple/price")
  Future<CoinCurrentPrice> getCurrentPrice(
    @Query('ids') String? id,
    @Query('vs_currencies') String? vsCurrency,
  );
}
