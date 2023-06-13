import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/model/shopping_itme_model.dart';
import 'package:riverpod_challenge_flutter/riverpod/state_notifire_provider.dart';

final filtershoppingListProvider = Provider<List<ShoppingItemModel>>(
  (ref) {
    final filterState = ref.watch(filterProvider);
    final shoppingListState = ref.watch(shoppingListProvider);

    if (filterState == FilterState.all) {
      return shoppingListState;
    }

    return shoppingListState
        .where(
          (element) => filterState == FilterState.men
              ? element.isForMen
              : !element.isForMen,
        )
        .toList();
  },
);

enum FilterState { notMen, men, all }

final filterProvider = StateProvider<FilterState>((ref) => FilterState.all);
