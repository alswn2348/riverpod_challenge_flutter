import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/model/shopping_itme_model.dart';

class ShoppingListProvider
    extends StateNotifier<List<ShoppingItemModel>> // 관리할 타입 선언
{
  ShoppingListProvider()
      : super(
          [
            ShoppingItemModel(
              name: "정장",
              quantity: 2,
              isForMen: true,
              hasJewel: false,
            ),
            ShoppingItemModel(
              name: "시계",
              quantity: 4,
              isForMen: false,
              hasJewel: true,
            ),
            ShoppingItemModel(
              name: "가방",
              quantity: 20,
              isForMen: false,
              hasJewel: true,
            ),
            ShoppingItemModel(
              name: "벨트",
              quantity: 5,
              isForMen: true,
              hasJewel: false,
            )
          ],
        );

  void toggleHasJewel({required String name}) {
    //파라미터와 같은 이름에 모델에 hasJewel 값 toggle
    state = state
        .map((e) => e.name == name
            ? ShoppingItemModel(
                name: e.name,
                quantity: e.quantity,
                isForMen: e.isForMen,
                hasJewel: !e.hasJewel)
            : e)
        .toList();
  }
}
