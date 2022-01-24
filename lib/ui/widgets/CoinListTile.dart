import 'package:crypto_flutter_app/models/coinDetailsResponseModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class CoinListTile extends StatelessWidget {
  final CoinDetailsResponseModel coinDetails;
  final Function() onTap;
  final formatter = intl.NumberFormat("#,##0.0######"); // for price change
  final percentageFormat = intl.NumberFormat("##0.0#");

  CoinListTile({Key? key, required this.coinDetails, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      onTap: onTap,
      leading: Image.network(
        coinDetails!.image!,
        cacheHeight: 24,
        cacheWidth: 24,
        height: 24,
        width: 24,
      ),
      trailing: Container(
          width: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "\$${formatter.format(coinDetails!.current_price)}",
                  style: TextStyle(fontSize: 13.5),
                ),
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text("High", style: TextStyle(fontSize: 8)),
                  Spacer(),
                  Text(
                    "\$${coinDetails!.high_24h}",
                    style: TextStyle(fontSize: 9, color: Colors.green),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Low", style: TextStyle(fontSize: 8)),
                  Spacer(),
                  Text(
                    "\$${coinDetails!.low_24h}",
                    style: TextStyle(fontSize: 9, color: Colors.red),
                  ),
                ],
              ),
            ],
          )),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Text("${coinDetails!.symbol!.toUpperCase()}/USD"),
          ),
          (coinDetails!.price_change_24h! > 0)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_drop_up_sharp, color: Colors.green[600]),
                    Text(
                      // "${coinDetails!['price_change_24h']}",
                      (coinDetails!.current_price! < 2)
                          ? formatter.format(coinDetails!.price_change_24h)
                          : percentageFormat
                              .format(coinDetails!.price_change_24h),
                      style: TextStyle(color: Colors.green, fontSize: 11),
                    ),
                    Text(
                      " (${percentageFormat.format(coinDetails!.price_change_percentage_24h)}%)",
                      style: TextStyle(color: Colors.green, fontSize: 11),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_drop_down_sharp, color: Colors.red),
                    Text(
                      // "${coinDetails!['price_change_24h']}",
                      (coinDetails!.current_price! < 2)
                          ? formatter.format(coinDetails!.price_change_24h)
                          : percentageFormat
                              .format(coinDetails!.price_change_24h),
                      style: TextStyle(color: Colors.red, fontSize: 10.5),
                    ),
                    Text(
                      " (${percentageFormat.format(coinDetails!.price_change_percentage_24h)}%)",
                      style: TextStyle(color: Colors.red, fontSize: 11),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
