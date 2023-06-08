import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_challenge_flutter/screen/home_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      // 상태관리가 필요한 위젯을 ProviderScope로 감싸야 사용가능

      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
