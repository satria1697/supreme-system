part of './counter_bloc.dart';

abstract class CounterEvent {
  const CounterEvent();
}

class PlusButtonClicked extends CounterEvent {}

class MinusButtonClicked extends CounterEvent {}

class ResetButtonClicked extends CounterEvent {}
