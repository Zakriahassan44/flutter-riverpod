import 'package:flutter/material.dart';
import 'package:flutter_practice/searchProvider/search_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (value) {
              ref.read(searchProvider.notifier).search(value);
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final search =
                  ref.watch((searchProvider).select((state) => state.search));
              return Text(search);
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final isChange =
                  ref.watch((searchProvider).select((state) => state.isChange));
              return Switch(
                value: isChange,
                onChanged: (value) {
                  ref.read(searchProvider.notifier).onChange(value);
                },
              );
            },
          )
        ],
      ),
    );
  }
}
