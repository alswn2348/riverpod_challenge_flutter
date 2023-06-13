import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  @override
  //프로바이더, 기존값, 다음값,
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    super.didUpdateProvider(provider, previousValue, newValue, container);
    print(
      '[Provider Updated] provider: $provider/ pv: $previousValue / nv: $newValue',
    );
  }

  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    super.didAddProvider(provider, value, container);
    print(
      '[Provider Updated] provider: $provider/ value: $value',
    );
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    super.didDisposeProvider(provider, containers);
    print(
      '[Provider Updated] provider: $provider',
    );
  }
}
