import 'package:freezed_annotation/freezed_annotation.dart';

part 'getCurrentPriceResponseModel.g.dart';

@JsonSerializable()
class CoinCurrentPrice {
  double? usd;
  CoinCurrentPrice({this.usd});
  factory CoinCurrentPrice.fromJson(Map<String, dynamic> json) =>
      _$CoinCurrentPriceFromJson(json);
  Map<String, dynamic> toJson() => _$CoinCurrentPriceToJson(this);
}
