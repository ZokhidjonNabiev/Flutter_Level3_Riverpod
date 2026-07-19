import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/riverpod/selected_tab_provider.dart';
import 'package:riverpod_app/screens/counter_screen.dart';
import 'package:riverpod_app/screens/history_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedTabProvider);
    final screens = [const CounterScreen(), const HistoryScreen()];
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          ref.read(selectedTabProvider.notifier).state = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.restart_alt_outlined),
          label: "History")
        ],
      ),
    );
  }
}
