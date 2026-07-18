class HistoryEntry{
  final int count;
  final DateTime timeStamp;

  HistoryEntry({
    required this.count,
    required this.timeStamp
});
}

class CounterState {
  final int count;
  final List<HistoryEntry> history;

  CounterState({
    required this.count,
    required this.history
});
}