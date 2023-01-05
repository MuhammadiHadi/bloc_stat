part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CountState extends CounterState {
  int count;
  CountState(this.count);
  @override

  // TODO: implement props
  List<Object?> get props => [count];
}
