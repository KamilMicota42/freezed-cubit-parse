part of 'freezed_data_cubit.dart';

@freezed
class FreezedDataState with _$FreezedDataState {
  const factory FreezedDataState.initial() = _Initial;
  const factory FreezedDataState.loading() = _Loading;
  const factory FreezedDataState.loaded(Map<String, dynamic> data) = _Loaded;
  const factory FreezedDataState.error() = _Error;
}
