import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:riverpod_challenge_flutter/layout/default_layout.dart';

class StateProviderScreen extends StatelessWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "StateProviderScreen",
      body: Column(
        children: const [],
      ),
    );
  }
}