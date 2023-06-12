import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeModifireProvider = FutureProvider.autoDispose(
  (ref) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    return [1, 2, 3, 4, 5];
  },
);

//자동 삭제