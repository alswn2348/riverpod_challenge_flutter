import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/model/shopping_itme_model.dart';

final selectProvider =
    StateNotifierProvider<SelectNotifier, ShoppingItemModel>((ref) {
  return SelectNotifier();
});

class SelectNotifier extends StateNotifier<ShoppingItemModel> {
  SelectNotifier()
      : super(
          ShoppingItemModel(
            name: "정장",
            quantity: 2,
            isForMen: true,
            hasJewel: false,
          ),
        );

  void toggleHasJewel() {
    state = state.copyWith(hasJewel: !state.hasJewel);
  }

  void toggleIsForMen() {
    state = state.copyWith(isForMen: !state.isForMen);
  }
}
