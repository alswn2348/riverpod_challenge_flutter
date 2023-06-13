import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/riverpod/provider_observer.dart';
import 'package:riverpod_challenge_flutter/screen/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      // 상태관리가 필요한 위젯을 ProviderScope로 감싸야 사용가능

      //프로바이더를 관찰
      observers: [
        Logger(),
      ],

      child: const MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
