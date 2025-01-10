import '../model/item.dart';

class FavouriteState {
  final List<Item> allItems;
  final List<Item> filteredItems;
  final String search;

  FavouriteState({
    required this.allItems,
    required this.search,
    required this.filteredItems,
  });

  FavouriteState copyWith({
    List<Item>? allItems,
    List<Item>? filteredItems,
    String? search,
  }) {
    return FavouriteState(
      allItems: allItems ?? this.allItems,
      search: search ?? this.search,
      filteredItems: filteredItems ?? this.filteredItems,
    );
  }
}
