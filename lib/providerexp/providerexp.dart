// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod/riverpod.dart';

// // provider to read constat value

// final hello = Provider<String>((ref) {
//   return 'Hello World';
// });

// final age = Provider<int>((ref) {
//   return 25;
// });

// class HomeScreen extends ConsumerStatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   ConsumerState<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends ConsumerState<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final subcribe = ref.watch(hello);
//     final temp = ref.watch(age);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//       ),
//       body: Center(
//         child: Text(
//           subcribe + "  " + temp.toString(),
//           style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final subcribe = ref.watch(hello);
//     final temp = ref.watch(age);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//       ),
//       body: Center(
//         child: Text(
//           subcribe + "  " + temp.toString(),
//           style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
