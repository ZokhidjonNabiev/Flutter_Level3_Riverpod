import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/riverpod/counter_notifier.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  final counterState = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Counter'), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${counterState.count}",
                style: TextStyle(
                    fontSize: 48
                )),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  ref.read(counterProvider.notifier).increment();
                }, child: Icon(
                    Icons.circle_outlined
                )
                ),

                SizedBox(width: 20,),

                ElevatedButton(onPressed: (){
                  ref.read(counterProvider.notifier).reset();
                }, child: Icon(
                  Icons.restart_alt_outlined
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
