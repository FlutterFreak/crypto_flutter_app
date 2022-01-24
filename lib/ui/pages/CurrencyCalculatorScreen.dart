import 'package:crypto_flutter_app/bloc/currentPriceBloc.dart';
import 'package:crypto_flutter_app/models/getCurrentPriceResponseModel.dart';
import 'package:crypto_flutter_app/network/result_state/api_result_state.dart';
import 'package:crypto_flutter_app/ui/widgets/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyCalculatorScreen extends StatefulWidget {
  final String? coinId;
  final String? networkImage;

  const CurrencyCalculatorScreen({Key? key, this.coinId, this.networkImage})
      : super(key: key);

  @override
  _CurrencyCalculatorScreenState createState() =>
      _CurrencyCalculatorScreenState();
}

class _CurrencyCalculatorScreenState extends State<CurrencyCalculatorScreen> {
  TextEditingController textEditingController = new TextEditingController();
  TextEditingController textEditingControllerUsd = new TextEditingController();
  CurrentPriceBloc currentPriceBloc = CurrentPriceBloc();
  double? currentPrice;

  @override
  void initState() {
    currentPriceBloc.getCoinCurrentPrice(vsCurrency: 'usd', id: widget.coinId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrangeAccent,
                  Colors.orange,
                ],
                begin: const FractionalOffset(0.0, 1.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          BlocListener<CurrentPriceBloc, ApiResultState<CoinCurrentPrice>>(
            bloc: currentPriceBloc,
            listener: (context, state) {
              if (state is OnDataState) {
                currentPrice =
                    (state as OnDataState<CoinCurrentPrice>).data!.usd;
                print('current price :$currentPrice');
              } else if (state is ErrorState) {
                String? error =
                    (state as ErrorState<CoinCurrentPrice>).errorMessage;
                CustomWidgets.showToast(error!, context);
              }
            },
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Currency Calculator',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  CustomWidgets.textField(
                      textController: textEditingController,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          currentPriceBloc.getCoinCurrentPrice(
                              vsCurrency: 'usd', id: widget.coinId);
                          double amount = double.parse(value);
                          textEditingControllerUsd.text =
                              (currentPrice! * amount).toString();
                        } else {
                          textEditingControllerUsd.text = '0.00';
                        }
                      },
                      prefixIcon: Image.network(
                        widget.networkImage!,
                        cacheHeight: 24,
                        cacheWidth: 24,
                        height: 24,
                        width: 24,
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  CustomWidgets.textField(
                    textController: textEditingControllerUsd,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        currentPriceBloc.getCoinCurrentPrice(
                            vsCurrency: 'usd', id: widget.coinId);
                        double amount = double.parse(value);
                        textEditingController.text =
                            (amount / currentPrice!).toString();
                      } else {
                        textEditingController.text = '0.00';
                      }
                    },
                    prefixIcon: Icon(
                      Icons.monetization_on_outlined,
                      size: 24,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 5))),
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.deepOrangeAccent),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
