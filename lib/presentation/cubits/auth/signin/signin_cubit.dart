import 'package:basic_structure/core/%20utils/network/result_state/result_state.dart';
import 'package:basic_structure/data/models/response/login_response/login_response.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_state.dart';
part 'signin_cubit.freezed.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(const SigninState(loginState: ResultState.idle()));

  Future<void> signIn() async {
    emit(state.copyWith(loginState: const ResultState.loading()));
  }
}
