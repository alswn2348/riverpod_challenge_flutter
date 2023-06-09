import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/layout/default_layout.dart';
import 'package:riverpod_challenge_flutter/model/shopping_itme_model.dart';
import 'package:riverpod_challenge_flutter/riverpod/state_notifire_provider.dart';

class StateNotifireScreen extends ConsumerWidget {
  const StateNotifireScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ShoppingItemModel> state = ref.watch(shoppingListProvider);

    return DefaultLayout(
      title: "StateNotifireProvider",
      body: ListView(
        children: state
            .map(
              (e) => CheckboxListTile(
                title: Text(
                  e.name,
                ),
                value: e.hasJewel,
                onChanged: (value) {
                  //값을 업데이트 할 Provider.notifier read
                  ref
                      .read(shoppingListProvider.notifier)
                      .toggleHasJewel(name: e.name);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
