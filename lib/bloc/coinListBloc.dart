import 'package:crypto_flutter_app/models/coinDetailsResponseModel.dart';
import 'package:crypto_flutter_app/network/error/network_exceptions.dart';
import 'package:crypto_flutter_app/network/result_state/api_result_state.dart';
import 'package:crypto_flutter_app/repository/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinListBloc
    extends Cubit<ApiResultState<List<CoinDetailsResponseModel>>> {
  CoinListBloc() : super(ApiResultState.initial());
  ApiRepository _apiRepository = ApiRepository();

  getCoinList({
    String? vsCurrency,
    int? perPage,
  }) async {
    emit(ApiResultState.loading());
    var data = await _apiRepository.getCoinList(vsCurrency, perPage);

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
