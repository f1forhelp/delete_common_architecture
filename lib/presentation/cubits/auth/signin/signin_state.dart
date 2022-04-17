part of 'signin_cubit.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState({required ResultState<LoginResponse> loginState}) =
      _SigninState;
}
