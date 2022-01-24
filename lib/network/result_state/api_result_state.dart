import 'package:crypto_flutter_app/network/error/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result_state.freezed.dart';

@freezed
class ApiResultState<T> with _$ApiResultState<T> {
  const factory ApiResultState.initial() = InitialState<T>;

  const factory ApiResultState.loading() = LoadingState<T>;

  const factory ApiResultState.data({required T? data}) = OnDataState<T>;

  const factory ApiResultState.error(
      {required String? errorMessage,
      required NetworkExceptions? networkException}) = ErrorState<T>;
}
