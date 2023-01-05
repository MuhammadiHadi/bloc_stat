import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternetConnectivity extends StatefulWidget {
  const InternetConnectivity({Key? key}) : super(key: key);

  @override
  State<InternetConnectivity> createState() => _InternetConnectivityState();
}

class _InternetConnectivityState extends State<InternetConnectivity> {
  @override
  Widget build(BuildContext context) {
    Connectivity connectivity = Connectivity();
    return Scaffold(
      appBar: AppBar(
        title: Text("InternetConnectivity"),
      ),
      body: StreamBuilder<ConnectivityResult>(
        stream: connectivity.onConnectivityChanged,
        builder: (_, snapshot) {
          return InternetConnectivityWidget(
            snapshot: snapshot,
            widget: Text(" enjoy the wifi "),
          );
        },
      ),
    );
  }
}

class InternetConnectivityWidget extends StatelessWidget {
  final AsyncSnapshot<ConnectivityResult> snapshot;
  final Widget widget;
  const InternetConnectivityWidget(
      {Key? key, required this.snapshot, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (snapshot.connectionState) {
      case ConnectionState.active:
        final state = snapshot.data!;
        switch (state) {
          case ConnectivityResult.none:
            return Text(" Not connected to internet");
          default:
            return widget;
        }
      default:
        return Text('connected');
    }
  }
}
