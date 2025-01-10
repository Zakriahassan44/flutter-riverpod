import 'package:flutter_practice/favourite%20app/model/item.dart';
import 'package:flutter_practice/favourite%20app/provider/favourite_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favouriteProvider =
    StateNotifierProvider<FavouriteNotifer, FavouriteState>((ref) {
  return FavouriteNotifer();
});

class FavouriteNotifer extends StateNotifier<FavouriteState> {
  FavouriteNotifer()
      : super(
          FavouriteState(
            allItems: [],
            search: '',
            filteredItems: [],
          ),
        );

  void addItem() {
    List<Item> item = [
      Item(name: 'Mackbook', favourite: true, id: 1),
      Item(name: 'iphone', favourite: false, id: 2),
      Item(name: 'g-fource 3060', favourite: true, id: 3),
      Item(name: 'sumsung ultra', favourite: false, id: 4),
      Item(name: 'google picel', favourite: true, id: 5),
      Item(name: 'ipad 13', favourite: false, id: 6),
    ];
    state =
        state.copyWith(allItems: item.toList(), filteredItems: item.toList());
  }

  void filter(String search){
    state = state.copyWith(filteredItems: _filterItems(state.allItems, search));

  }

  List<Item> _filterItems(List<Item> items, String search){
    if (search.isEmpty){
      return items;
    }
    return items
        .where((item)=> item.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
  }
}
