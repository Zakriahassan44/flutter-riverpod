// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod/riverpod.dart';

// //state provider read and write both and they change thw sate of the application

// final counter = StateProvider<int>((ref) {
//   return 0;
// });

// final switchProvider = StateProvider<bool>((ref) {
//   return false;
// });

// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     print('build');
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//         ),
//         body: Column(
//           children: [
//             Consumer(
//               builder: (context, ref, child) {
//                 final count = ref.watch(counter);
//                 print('build2');
//                 return Center(
//                   child: Text(
//                     count.toString(),
//                     style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
//                   ),
//                 );
//               },
//             ),
//             Consumer(
//               builder: (context, ref, child) {
//                 final count = ref.watch(switchProvider);
//                 print('build3');
//                 return Switch(
//                     value: count,
//                     onChanged: (value) {
//                       ref.read(switchProvider.notifier).state = value;
//                     });
//               },
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     ref.read(counter.notifier).state++;
//                   },
//                   child: Text('+'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     ref.read(counter.notifier).state--;
//                   },
//                   child: Text('-'),
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }

// class HomeScreen extends ConsumerStatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   ConsumerState<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends ConsumerState<HomeScreen> {
//   void initState() {
//     super.initState();
//     ref.read(switchProvider.notifier).state = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//         ),
//         body: Column(
//           children: [
//             Consumer(
//               builder: (context, ref, child) {
//                 final count = ref.watch(counter);
//                 print('build2');
//                 return Center(
//                   child: Text(
//                     count.toString(),
//                     style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
//                   ),
//                 );
//               },
//             ),
//             Consumer(
//               builder: (context, ref, child) {
//                 final count = ref.watch(switchProvider);
//                 print('build3');
//                 return Switch(
//                     value: count,
//                     onChanged: (value) {
//                       ref.read(switchProvider.notifier).state = value;
//                     });
//               },
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     ref.read(counter.notifier).state++;
//                   },
//                   child: Text('+'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     ref.read(counter.notifier).state--;
//                   },
//                   child: Text('-'),
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }
