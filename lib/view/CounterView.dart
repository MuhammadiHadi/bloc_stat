import 'package:bloc_stat/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int Count = 0;
  @override
  Widget build(BuildContext context) {
    print("Counter Bloc");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
              if (state is CountState) {
                return Text(
                  " ${state.count}",
                  style: TextStyle(fontSize: 25),
                );
              }
              return Text("Hello");
            }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                      color: Colors.green,
                      child: Text("+",
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      onPressed: () {
                        context.read<CounterBloc>().add(InCount());
                      }),
                  MaterialButton(
                      color: Colors.green,
                      child: Text("-",
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      onPressed: () {
                        context.read<CounterBloc>().add(dcrCount());
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
