import 'package:crypto_flutter_app/models/coinDetailsResponseModel.dart';
import 'package:crypto_flutter_app/ui/widgets/CoinListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  Widget buildTestableWidget(Widget widget) {
    return MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          home: Material(child: widget),
        ));
  }

  testWidgets('CoinListTile test', (WidgetTester tester) async {
    CoinListTile coinListTile = CoinListTile(
        coinDetails: CoinDetailsResponseModel(
            id: "bitcoin",
            symbol: "btc",
            name: "Bitcoin",
            image:
                "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
            current_price: 35558,
            market_cap: 677069588426,
            market_cap_rank: 1,
            fully_diluted_valuation: 750799453332,
            total_volume: 25052860480,
            high_24h: 36364,
            low_24h: 34418,
            price_change_24h: 0.01033927,
            price_change_percentage_24h: 0.00003,
            market_cap_change_24h: 4792376716,
            market_cap_change_percentage_24h: 0.71286,
            circulating_supply: 18937762,
            total_supply: 21000000,
            max_supply: 21000000,
            ath: 69045,
            ath_change_percentage: -48.21859,
            ath_date: "2021-11-10T14:24:11.849Z",
            atl: 67.81,
            atl_change_percentage: 52625.088,
            atl_date: "2013-07-06T00:00:00.000Z",
            last_updated: "2022-01-23T14:28:14.667Z"),
        onTap: () {});
    await mockNetworkImages(() async {
      await tester.pumpWidget(buildTestableWidget(coinListTile));
      expect(find.byKey(Key('coinListTile')), findsOneWidget);
      await tester.pump();
      await tester.tap(find.byKey(Key('coinListTile')));
      await tester.pumpAndSettle();
      expect(find.text('High'), findsOneWidget);
      await tester.pump();
      expect(find.text('Low'), findsOneWidget);
      await tester.pump();
    });
  });
}
