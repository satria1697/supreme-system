import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState.reset()) {
    on<PlusButtonClicked>(_onPlusButtonClicked);
    on<MinusButtonClicked>(_onMinusButtonClicked);
    on<ResetButtonClicked>(_onResetButtonClicked);
  }

  Future<void> _onPlusButtonClicked(
      PlusButtonClicked plusButtonClicked, Emitter<CounterState> emit) async {
    emit(CounterState.change(state.clicked + 1));
  }

  Future<void> _onMinusButtonClicked(
      MinusButtonClicked minusButtonClicked, Emitter<CounterState> emit) async {
    emit(CounterState.change(state.clicked - 1));
  }

  Future<void> _onResetButtonClicked(
      ResetButtonClicked resetButtonClicked, Emitter<CounterState> emit) async {
    emit(const CounterState.reset());
  }
}
