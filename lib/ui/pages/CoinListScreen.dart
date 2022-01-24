import 'package:crypto_flutter_app/bloc/coinListBloc.dart';
import 'package:crypto_flutter_app/models/coinDetailsResponseModel.dart';
import 'package:crypto_flutter_app/network/error/network_exceptions.dart';
import 'package:crypto_flutter_app/network/result_state/api_result_state.dart';
import 'package:crypto_flutter_app/ui/pages/CurrencyCalculatorScreen.dart';
import 'package:crypto_flutter_app/ui/widgets/CoinListTile.dart';
import 'package:crypto_flutter_app/ui/widgets/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' as intl;

class CoinListScreen extends StatefulWidget {
  @override
  _CoinListScreenState createState() => _CoinListScreenState();
}

class _CoinListScreenState extends State<CoinListScreen> {
  final formatter = intl.NumberFormat("#,##0.0######"); // for price change
  final percentageFormat = intl.NumberFormat("##0.0#");
  CoinListBloc coinListBloc = CoinListBloc();
  List<CoinDetailsResponseModel>? coinList = [];

  @override
  void initState() {
    coinListBloc.getCoinList(vsCurrency: 'usd', perPage: 12);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('coinListScreen'),
      appBar: AppBar(
        title: Text(
          'Coin List Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocConsumer<CoinListBloc,
          ApiResultState<List<CoinDetailsResponseModel>>>(
        bloc: coinListBloc,
        listener: (context, state) {
          if (state is OnDataState) {
            coinList =
                (state as OnDataState<List<CoinDetailsResponseModel>>).data;
          } else if (state is ErrorState) {
            String? error =
                (state as ErrorState<List<CoinDetailsResponseModel>>)
                    .errorMessage;
            CustomWidgets.showToast(error!, context);
          }
        },
        builder: (context, state) {
          return state.when(
            initial: () {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.deepOrangeAccent,
                ),
              );
            },
            loading: () {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.deepOrangeAccent,
                ),
              );
            },
            data: (data) {
              coinList = data;
              return coinListWidget(coinList!);
            },
            error: (String? error, NetworkExceptions? networkExceptions) {
              return coinListWidget(coinList!);
            },
          );
        },
      ),
    );
  }

  Widget coinListWidget(List<CoinDetailsResponseModel> coinList) {
    return RefreshIndicator(
        onRefresh: () async {
          await coinListBloc.getCoinList(vsCurrency: 'usd', perPage: 12);
        },
        child: ListView.builder(
          itemCount: coinList!.length,
          itemBuilder: (BuildContext context, int i) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              child: CoinListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CurrencyCalculatorScreen(
                            coinId: coinList[i].id,
                            networkImage: coinList[i].image,
                          )));
                },
                coinDetails: coinList[i],
              ),
            );
          },
        ));
  }
}
