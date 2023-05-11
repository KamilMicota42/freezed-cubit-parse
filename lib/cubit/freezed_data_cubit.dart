import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_data_state.dart';
part 'freezed_data_cubit.freezed.dart';

class FreezedDataCubit extends Cubit<FreezedDataState> {
  FreezedDataCubit() : super(const FreezedDataState.initial());

  Future<void> fetchData() async {
    emit(const FreezedDataState.loading());
    try {
      final response = await Dio().get('https://my-json-server.typicode.com/typicode/demo/posts/3');
      emit(FreezedDataState.loaded(response.data));
    } catch (e) {
      emit(const FreezedDataState.error());
    }
  }
}
