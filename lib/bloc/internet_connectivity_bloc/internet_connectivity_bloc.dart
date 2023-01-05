import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'internet_connectivity_event.dart';
part 'internet_connectivity_state.dart';

class InternetConnectivityBloc
    extends Bloc<InternetConnectivityEvent, InternetConnectivityState> {
  InternetConnectivityBloc() : super(InternetConnectivityInitial()) {
    Connectivity connectivity = Connectivity();

    on<InternetLost>((event, emit) => emit(InternetLostState()));
    on<InternetGain>((event, emit) => emit(InternetGainState()));

    connectivity.onConnectivityChanged.listen((Result) {
      if (Result == ConnectivityResult.mobile ||
          Result == ConnectivityResult.wifi) {
        add(InternetGain());
      } else
        add(InternetLost());
    });
  }
}
