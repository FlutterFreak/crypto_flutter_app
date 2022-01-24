import 'package:crypto_flutter_app/bloc/currentPriceBloc.dart';
import 'package:crypto_flutter_app/ui/pages/CurrencyCalculatorScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

late CurrentPriceBloc currentPriceBloc;
void main() {
  setUp(() {
    currentPriceBloc = CurrentPriceBloc();
    currentPriceBloc.getCoinCurrentPrice(vsCurrency: 'usd', id: 'solana');
  });
  Widget buildTestableWidget(Widget widget) {
    return MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          home: BlocProvider<CurrentPriceBloc>(
            create: (BuildContext context) => currentPriceBloc,
            child: widget,
          ),
        ));
  }

  testWidgets('Currency calculator screen test', (WidgetTester tester) async {
    CurrencyCalculatorScreen currencyCalculatorScreen =
        CurrencyCalculatorScreen(
      coinId: "solana",
      networkImage:
          "https://assets.coingecko.com/coins/images/4128/large/solana.png?1640133422",
    );
    await mockNetworkImages(() async {
      await tester.pumpWidget(buildTestableWidget(currencyCalculatorScreen));
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('currencyCalculatorScreen')), findsOneWidget);
      await tester.pump();
    });
  });
}
