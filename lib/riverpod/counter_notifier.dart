import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/model/counter_state.dart';

class CounterNotifier extends Notifier<CounterState>{
  @override
  CounterState build() {
    return CounterState(count: 0, history: []);
  }

  void increment() {
    final newCount = state.count + 1;
    final newEntry = HistoryEntry(count: newCount, timeStamp: DateTime.now());

    state = CounterState(
        count: newCount,
        history: [...state.history, newEntry]
    );
  }

  void reset() {
    final newCount = 0;
    final newEntry = HistoryEntry(count: newCount, timeStamp: DateTime.now());

    state = CounterState(
        count: newCount,
        history: [...state.history, newEntry]);
  }

}

final counterProvider = NotifierProvider<CounterNotifier, CounterState>(CounterNotifier.new);