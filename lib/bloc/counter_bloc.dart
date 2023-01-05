import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CountState(0)) {
    on<InCount>((event, emit) => _increment(event, emit));
    on<dcrCount>((event, emit) => _dcrement(event, emit));
  }

  _increment(InCount event, Emitter<CounterState> emit) {
    emit(CountState((state as CountState).count + 1));
  }

  _dcrement(dcrCount event, Emitter<CounterState> emit) {
    emit(CountState((state as CountState).count - 1));
  }
}
