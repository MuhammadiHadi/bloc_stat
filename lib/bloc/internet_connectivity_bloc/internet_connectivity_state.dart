part of 'internet_connectivity_bloc.dart';

abstract class InternetConnectivityState extends Equatable {
  const InternetConnectivityState();
}

class InternetConnectivityInitial extends InternetConnectivityState {
  @override
  List<Object> get props => [];
}

class InternetLostState extends InternetConnectivityState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class InternetGainState extends InternetConnectivityState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
