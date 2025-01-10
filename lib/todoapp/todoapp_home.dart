// import 'package:flutter/material.dart';
// import 'package:flutter_practice/todoapp/item_provider.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final item = ref.watch(itemProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Counter App'),
//       ),
//       body: item.isEmpty
//           ? Text('No data found')
//           : ListView.builder(
//               itemCount: item.length,
//               itemBuilder: (context, index) {
//                 final itemDetail = item[index];
//                 return ListTile(
//                   title: Text(itemDetail.name),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           ref
//                               .watch(itemProvider.notifier)
//                               .deleteItem(itemDetail.id);
//                         },
//                         icon: Icon(Icons.delete),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           ref
//                               .read(itemProvider.notifier)
//                               .updateItem(itemDetail.id, 'update item');
//                         },
//                         icon: const Icon(Icons.edit),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           ref.read(itemProvider.notifier).addItem('new item');
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
