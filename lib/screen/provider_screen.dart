import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/layout/default_layout.dart';
import 'package:riverpod_challenge_flutter/riverpod/provider.dart';
import 'package:riverpod_challenge_flutter/riverpod/state_notifire_provider.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filtershoppingListProvider);

    return DefaultLayout(
      title: "ProviderScreen",
      actions: [
        PopupMenuButton<FilterState>(
          itemBuilder: (_) => FilterState.values
              .map(
                (e) => PopupMenuItem(
                  value: e,
                  child: Text(
                    e.name,
                  ),
                ),
              )
              .toList(),
          onSelected: (value) {
            ref.read(filterProvider.notifier).update((state) => value);
          },
        ),
      ],
      body: ListView(
        children: state
            .map(
              (e) => CheckboxListTile(
                title: Text(
                  e.name,
                ),
                value: e.hasJewel,
                onChanged: (value) {
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
