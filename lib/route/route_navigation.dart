import 'package:bloc_stat/view/CounterView.dart';
import 'package:bloc_stat/view/bloc_connectivity.dart';
import 'package:bloc_stat/view/home_view.dart';
import 'package:bloc_stat/view/internet_connectivity.dart';
import 'package:flutter/material.dart';

import 'app_route.dart';

class RouteNavigation {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.HomeView:
        return MaterialPageRoute(builder: (_) => HomeView());
      case AppRoute.CounterView:
        return MaterialPageRoute(builder: (_) => CounterView());
      case AppRoute.InternetConnectivity:
        return MaterialPageRoute(builder: (_) => InternetConnectvity());
      case AppRoute.BlocConnectivity:
        return MaterialPageRoute(builder: (_) => BlocConnectivity());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(child: Text("No Route Found")),
          );
        });
    }
  }
}
