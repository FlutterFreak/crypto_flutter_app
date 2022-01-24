import 'package:crypto_flutter_app/models/getCurrentPriceResponseModel.dart';
import 'package:crypto_flutter_app/network/error/network_exceptions.dart';
import 'package:crypto_flutter_app/network/result_state/api_result_state.dart';
import 'package:crypto_flutter_app/repository/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentPriceBloc extends Cubit<ApiResultState<CoinCurrentPrice>> {
  CurrentPriceBloc() : super(ApiResultState.initial());
  ApiRepository _apiRepository = ApiRepository();

  getCoinCurrentPrice({
    String? vsCurrency,
    String? id,
  }) async {
    emit(ApiResultState.loading());
    var data = await _apiRepository.getCurrentPrice(vsCurrency, id);

    data.map(
      success: (value) {
        emit(ApiResultState.data(data: value.data));
      },
      failure: (value) {
        emit(
          ApiResultState.error(
              errorMessage: NetworkExceptions.getErrorMessage(value.error),
              networkException: value.error),
        );
      },
    );
  }
}
