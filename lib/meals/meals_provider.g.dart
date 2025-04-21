// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mealsNotifierHash() => r'17022f518378672575e851616c7322cdeaffc1e5';

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

abstract class _$MealsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Meal>> {
  late final String categoryName;

  FutureOr<List<Meal>> build(
    String categoryName,
  );
}

/// See also [MealsNotifier].
@ProviderFor(MealsNotifier)
const mealsNotifierProvider = MealsNotifierFamily();

/// See also [MealsNotifier].
class MealsNotifierFamily extends Family<AsyncValue<List<Meal>>> {
  /// See also [MealsNotifier].
  const MealsNotifierFamily();

  /// See also [MealsNotifier].
  MealsNotifierProvider call(
    String categoryName,
  ) {
    return MealsNotifierProvider(
      categoryName,
    );
  }

  @override
  MealsNotifierProvider getProviderOverride(
    covariant MealsNotifierProvider provider,
  ) {
    return call(
      provider.categoryName,
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
  String? get name => r'mealsNotifierProvider';
}

/// See also [MealsNotifier].
class MealsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MealsNotifier, List<Meal>> {
  /// See also [MealsNotifier].
  MealsNotifierProvider(
    String categoryName,
  ) : this._internal(
          () => MealsNotifier()..categoryName = categoryName,
          from: mealsNotifierProvider,
          name: r'mealsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mealsNotifierHash,
          dependencies: MealsNotifierFamily._dependencies,
          allTransitiveDependencies:
              MealsNotifierFamily._allTransitiveDependencies,
          categoryName: categoryName,
        );

  MealsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryName,
  }) : super.internal();

  final String categoryName;

  @override
  FutureOr<List<Meal>> runNotifierBuild(
    covariant MealsNotifier notifier,
  ) {
    return notifier.build(
      categoryName,
    );
  }

  @override
  Override overrideWith(MealsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MealsNotifierProvider._internal(
        () => create()..categoryName = categoryName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryName: categoryName,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MealsNotifier, List<Meal>>
      createElement() {
    return _MealsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MealsNotifierProvider && other.categoryName == categoryName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MealsNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<Meal>> {
  /// The parameter `categoryName` of this provider.
  String get categoryName;
}

class _MealsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MealsNotifier, List<Meal>>
    with MealsNotifierRef {
  _MealsNotifierProviderElement(super.provider);

  @override
  String get categoryName => (origin as MealsNotifierProvider).categoryName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
