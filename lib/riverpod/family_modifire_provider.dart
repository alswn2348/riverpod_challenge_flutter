import 'package:flutter_riverpod/flutter_riverpod.dart';

//<리턴 타입, 받을 데이터>
//family modifire 는 프로바이더를 생성할때 변수를 받고싶을때 사용

final familyModifierProvider = FutureProvider.family<List<int>, int>(
  (ref, data) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    return List.generate(5, (index) => index * data);
  },
);
