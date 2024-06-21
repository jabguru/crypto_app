// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clientHash() => r'facb6cc62be23429298816926c1b0450393940e4';

/// See also [client].
@ProviderFor(client)
final clientProvider = AutoDisposeProvider<http.Client>.internal(
  client,
  name: r'clientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ClientRef = AutoDisposeProviderRef<http.Client>;
String _$coinsHash() => r'c911ff6f3ecd8d51a0c6e685e55c7abf31df50eb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [coins].
@ProviderFor(coins)
const coinsProvider = CoinsFamily();

/// See also [coins].
class CoinsFamily extends Family<AsyncValue<List<Coin>>> {
  /// See also [coins].
  const CoinsFamily();

  /// See also [coins].
  CoinsProvider call({
    int? count,
  }) {
    return CoinsProvider(
      count: count,
    );
  }

  @override
  CoinsProvider getProviderOverride(
    covariant CoinsProvider provider,
  ) {
    return call(
      count: provider.count,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'coinsProvider';
}

/// See also [coins].
class CoinsProvider extends FutureProvider<List<Coin>> {
  /// See also [coins].
  CoinsProvider({
    int? count,
  }) : this._internal(
          (ref) => coins(
            ref as CoinsRef,
            count: count,
          ),
          from: coinsProvider,
          name: r'coinsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$coinsHash,
          dependencies: CoinsFamily._dependencies,
          allTransitiveDependencies: CoinsFamily._allTransitiveDependencies,
          count: count,
        );

  CoinsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.count,
  }) : super.internal();

  final int? count;

  @override
  Override overrideWith(
    FutureOr<List<Coin>> Function(CoinsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CoinsProvider._internal(
        (ref) => create(ref as CoinsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        count: count,
      ),
    );
  }

  @override
  FutureProviderElement<List<Coin>> createElement() {
    return _CoinsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CoinsProvider && other.count == count;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CoinsRef on FutureProviderRef<List<Coin>> {
  /// The parameter `count` of this provider.
  int? get count;
}

class _CoinsProviderElement extends FutureProviderElement<List<Coin>>
    with CoinsRef {
  _CoinsProviderElement(super.provider);

  @override
  int? get count => (origin as CoinsProvider).count;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
