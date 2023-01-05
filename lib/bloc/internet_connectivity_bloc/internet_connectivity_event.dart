part of 'internet_connectivity_bloc.dart';

abstract class InternetConnectivityEvent extends Equatable {
  const InternetConnectivityEvent();
}

class InternetLost extends InternetConnectivityEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class InternetGain extends InternetConnectivityEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
