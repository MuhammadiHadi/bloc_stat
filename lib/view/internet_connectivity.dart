import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:flutter/material.dart';

class InternetConnectvity extends StatefulWidget {
  const InternetConnectvity({Key? key}) : super(key: key);

  @override
  State<InternetConnectvity> createState() => _InternetConnectvityState();
}

class _InternetConnectvityState extends State<InternetConnectvity> {
  @override
  Widget build(BuildContext context) {
    Connectivity connectivity = Connectivity();
    return Scaffold(
      appBar: AppBar(
        title: Text("Internet Connectivity"),
      ),
      body: StreamBuilder<ConnectivityResult>(
        stream: connectivity.onConnectivityChanged,
        builder: (context, snapshot) {
          return InternetConnectivityWidget(
            snapshot: snapshot,
            widget: Center(child: Text("Enjoy the wifi")),
          );
        },
      ),
    );
  }
}

class InternetConnectivityWidget extends StatelessWidget {
  final AsyncSnapshot<ConnectivityResult> snapshot;
  final Widget widget;
  const InternetConnectivityWidget({
    Key? key,
    required this.widget,
    required this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (snapshot.connectionState) {
      case ConnectionState.active:
        final state = snapshot.data!;
        switch (state) {
          case ConnectivityResult.none:
            return Center(
                child: Center(child: Text("not Cont to the Internet ")));
          default:
            return widget;
        }
      default:
        return Center(child: Text("connected"));
    }
  }
}
