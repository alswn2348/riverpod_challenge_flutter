import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/layout/default_layout.dart';
import 'package:riverpod_challenge_flutter/riverpod/select_provider.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('re build');
    //select 사용시 state 값이 select return 값 으로 들어간다

    final bool state = ref.watch(
      selectProvider.select(
        (value) => value.isForMen,
      ),
    );

    ref.listen(selectProvider.select((value) => value.hasJewel),
        (previous, next) {
      print('next : $next');
    });

    return DefaultLayout(
      title: "SelectProviderScreen",
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleIsForMen();
              },
              child: const Text("ForMen Toggle"),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleHasJewel();
              },
              child: const Text("HasJewel Toggle"),
            ),
          ],
        ),
      ),
    );
  }
}
