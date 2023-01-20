import 'package:flutter/material.dart';
import 'package:mi_bloc/counter/delivery/main.dart';
import 'package:mi_bloc/main/delivery/main.dart';

Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => const MainPage(),
  '/counter': (BuildContext context) => const CounterPage()
};
