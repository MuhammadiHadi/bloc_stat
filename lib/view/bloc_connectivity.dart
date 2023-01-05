import 'package:bloc_stat/bloc/internet_connectivity_bloc/internet_connectivity_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BlocConnectivity extends StatefulWidget {
  const BlocConnectivity({Key? key}) : super(key: key);

  @override
  State<BlocConnectivity> createState() => _BlocConnectivityState();
}

class _BlocConnectivityState extends State<BlocConnectivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:
              BlocConsumer<InternetConnectivityBloc, InternetConnectivityState>(
            builder: (context, state) {
              if (state is InternetGainState) {
                return Text("Connected");
              } else {
                return Text("not Connected");
              }
            },
            listener: (context, state) {
              if (state is InternetGainState) {
                Fluttertoast.showToast(msg: "Connected");
              } else {
                Fluttertoast.showToast(msg: "Not connected to the internet");
              }
            },
          ),
        ),
      ),
    );
  }
}
