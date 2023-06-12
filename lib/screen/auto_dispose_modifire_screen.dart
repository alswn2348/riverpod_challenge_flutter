import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/layout/default_layout.dart';
import 'package:riverpod_challenge_flutter/riverpod/auto_dispose_modifire.dart';

class AutoDisposeModifireScreen extends ConsumerWidget {
  const AutoDisposeModifireScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(autoDisposeModifireProvider);

    return DefaultLayout(
      title: "AutoDisposeModifireScreen",
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
