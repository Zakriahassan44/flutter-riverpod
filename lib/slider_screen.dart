import 'package:flutter/material.dart';
import 'package:flutter_practice/slider_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build1');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Consumer(
              builder: (context, ref, child) {
                final slider =
                    ref.watch(sliderProvider.select((State) => State.slider));

                print('slder');
                return Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.withOpacity(slider),
                );
              },
            ),
          ),
          Consumer(
            builder: (context, ref, child) {
              final slider = ref
                  .watch(sliderProvider.select((State) => State.showPassowrd));
              print('eye');
              return InkWell(
                onTap: () {
                  final stateProvider = ref.read(sliderProvider.notifier);
                  stateProvider.state =
                      stateProvider.state.copyWith(showPassowrd: !slider);
                },
                child: Container(
                  height: 200,
                  width: 200,
                  child: slider
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final slider =
                  ref.watch(sliderProvider.select((State) => State.slider));
              print('build3');
              return Slider(
                value: slider,
                onChanged: (value) {
                  final stateProvider = ref.read(sliderProvider.notifier);
                  stateProvider.state =
                      stateProvider.state.copyWith(slider: value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
