import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/riverpod/counter_notifier.dart';

class HistoryScreen extends ConsumerWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(title: Text("History"), centerTitle: true),
      body: counterState.history.isEmpty
          ? Center(child: Text("No history", style: TextStyle(fontSize: 64)))
          : ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                final entry = counterState.history[index];
                return ListTile(
                  title: Text("${entry.count}"),
                  subtitle: Text("${entry.timeStamp}"),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemCount: counterState.history.length,
            ),
    );
  }
}
