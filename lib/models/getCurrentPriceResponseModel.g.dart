// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getCurrentPriceResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinCurrentPrice _$CoinCurrentPriceFromJson(Map<String, dynamic> json) {
  return CoinCurrentPrice(
    usd: (json['usd'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$CoinCurrentPriceToJson(CoinCurrentPrice instance) =>
    <String, dynamic>{
      'usd': instance.usd,
    };
