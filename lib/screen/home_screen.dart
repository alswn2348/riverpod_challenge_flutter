import 'package:flutter/material.dart';
import 'package:riverpod_challenge_flutter/layout/default_layout.dart';
import 'package:riverpod_challenge_flutter/screen/auto_dispose_modifire_screen.dart';
import 'package:riverpod_challenge_flutter/screen/family_modifire_screen.dart';
import 'package:riverpod_challenge_flutter/screen/futura_provider_screen.dart';
import 'package:riverpod_challenge_flutter/screen/state_notifire_screen.dart';
import 'package:riverpod_challenge_flutter/screen/state_provider_screen.dart';
import 'package:riverpod_challenge_flutter/screen/stream_provider_screnn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "HomeScreen",
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateProviderScreen(),
                ),
              );
            },
            child: const Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateNotifireScreen(),
                ),
              );
            },
            child: const Text('StateNotifireScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const FutureProviderScreen(),
                ),
              );
            },
            child: const Text('FutureProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StreamProviderScreen(),
                ),
              );
            },
            child: const Text('StreamProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const FamilyModifreScreen(),
                ),
              );
            },
            child: const Text('FamilyModifreScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const AutoDisposeModifireScreen(),
                ),
              );
            },
            child: const Text('AutoDisposeModifireScreen'),
          ),
        ],
      ),
    );
  }
}
