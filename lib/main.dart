import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/screens/counter_screen.dart';
import 'package:riverpod_app/screens/home_screen.dart';

void main() {
  runApp(ProviderScope(child: CounterApp()));
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
}
