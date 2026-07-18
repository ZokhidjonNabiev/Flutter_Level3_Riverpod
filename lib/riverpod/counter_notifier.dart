import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/model/counter_state.dart';

class CounterNotifier extends Notifier<CounterState>{
  @override
  CounterState build() {
    return CounterState(count: 0, history: []);
  }

}