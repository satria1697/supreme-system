part of './counter_bloc.dart';

class CounterState extends Equatable {
  const CounterState._({this.clicked = 0});
  final int clicked;

  const CounterState.reset() : this._(clicked: 0);

  const CounterState.change(int clicked) : this._(clicked: clicked);

  @override
  List<Object?> get props => [clicked];
}
