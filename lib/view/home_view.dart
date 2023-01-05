import 'package:bloc_stat/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int Count = 0;
  @override
  Widget build(BuildContext context) {
    print("Counter Bloc");
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
                color: Colors.amberAccent[100],
                child: Text("Counter View"),
                onPressed: () {
                  Navigator.pushNamed(context, 'count');
                }),
            MaterialButton(
                color: Colors.amberAccent[100],
                child: Text("Internet Connectivity"),
                onPressed: () {
                  Navigator.pushNamed(context, 'connectivity');
                }),
            MaterialButton(
                color: Colors.amberAccent[100],
                child: Text("Internet Connectivity with bloc"),
                onPressed: () {
                  Navigator.pushNamed(context, 'connected');
                }),
          ],
        ),
      ),
    );
  }
}
