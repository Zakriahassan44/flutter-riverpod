// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import 'item.dart';
//
// final  itemProvider = StateNotifierProvider<ItemNotifer,List<Item>>((ref){
//   return  ItemNotifer();
// });
//
// class ItemNotifer extends StateNotifier<List<Item>>{
//   ItemNotifer () : super([]);
//
//   void addItem(String name){
//     final item = Item(id: DateTime.now().toString(), name: name);
//     state.add(item);
//     state = state.toList();
//   }
//
//   void updateItem(String id, String name){
//     int foundIndex = state.indexWhere((item)=> item.id == id);
//     state[foundIndex].name= name;
//     state = state.toList();
//   }
//
//   void deleteItem(String id){
//     state.removeWhere((item)=> item.id == id);
//     state = state.toList();
//   }
// }