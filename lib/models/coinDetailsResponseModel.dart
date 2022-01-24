import 'package:freezed_annotation/freezed_annotation.dart';

part 'coinDetailsResponseModel.g.dart';

@JsonSerializable()
class CoinDetailsResponseModel {
  String? id;
  String? symbol;
  String? name;
  String? image;
  double? current_price;
  int? market_cap;
  int? market_cap_rank;
  int? fully_diluted_valuation;
  int? total_volume;
  double? high_24h;
  double? low_24h;
  double? price_change_24h;
  double? price_change_percentage_24h;
  double? market_cap_change_24h;
  double? market_cap_change_percentage_24h;
  double? circulating_supply;
  double? total_supply;
  double? max_supply;
  double? ath;
  double? ath_change_percentage;
  String? ath_date;
  double? atl;
  double? atl_change_percentage;
  String? atl_date;
  String? last_updated;

  CoinDetailsResponseModel(
      {this.id,
      this.symbol,
      this.name,
      this.image,
      this.current_price,
      this.market_cap,
      this.market_cap_rank,
      this.fully_diluted_valuation,
      this.total_volume,
      this.high_24h,
      this.low_24h,
      this.price_change_24h,
      this.price_change_percentage_24h,
      this.market_cap_change_24h,
      this.market_cap_change_percentage_24h,
      this.circulating_supply,
      this.total_supply,
      this.max_supply,
      this.ath,
      this.ath_change_percentage,
      this.ath_date,
      this.atl,
      this.atl_change_percentage,
      this.atl_date,
      this.last_updated});

  factory CoinDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CoinDetailsResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$CoinDetailsResponseModelToJson(this);
}
