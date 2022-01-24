import 'package:crypto_flutter_app/bloc/coinListBloc.dart';
import 'package:crypto_flutter_app/ui/pages/CoinListScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

late CoinListBloc coinListBloc;
void main() {
  setUp(() {
    CoinListBloc coinListBloc = CoinListBloc();
    coinListBloc.getCoinList(vsCurrency: 'usd', perPage: 12);
  });
  Widget buildTestableWidget(Widget widget) {
    return MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          home: BlocProvider<CoinListBloc>(
            create: (BuildContext context) => coinListBloc,
            child: widget,
          ),
        ));
  }

  testWidgets('CoinList screen test', (WidgetTester tester) async {
    CoinListScreen coinListScreen = CoinListScreen();
    await mockNetworkImages(() async {
      await tester.pumpWidget(buildTestableWidget(coinListScreen));
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('coinListScreen')), findsOneWidget);
      await tester.pump();
      await tester.tap(find.byType(ListView));
      await tester.pumpAndSettle();
    });
  });
}
