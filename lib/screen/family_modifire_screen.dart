import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/layout/default_layout.dart';
import 'package:riverpod_challenge_flutter/riverpod/family_modifire_provider.dart';

class FamilyModifreScreen extends ConsumerWidget {
  const FamilyModifreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(familyModifierProvider(3));

    return DefaultLayout(
      title: "FamilyModifreScreen",
      body: Column(
        children: [
          state.when(
            data: (data) {
              return Text(
                data.toString(),
              );
            },
            error: (err, stack) {
              return Text(
                err.toString(),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
