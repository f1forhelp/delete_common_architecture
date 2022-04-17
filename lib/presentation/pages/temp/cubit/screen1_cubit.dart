import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'screen1_state.dart';
part 'screen1_cubit.freezed.dart';

class Screen1Cubit extends Cubit<Screen1State> {
  Screen1Cubit({int? count}) : super(Screen1State(count: count ?? 0));

  incrementy(int incCount) async {
    emit(state.copyWith(count: state.count + incCount));
  }
}
