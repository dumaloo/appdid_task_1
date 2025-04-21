// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recipeNotifierHash() => r'5dff8b0ab819e162a4e829da7a53b0498c844183';

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

abstract class _$RecipeNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<dynamic>> {
  late final String mealId;

  FutureOr<List<dynamic>> build(
    String mealId,
  );
}

/// See also [RecipeNotifier].
@ProviderFor(RecipeNotifier)
const recipeNotifierProvider = RecipeNotifierFamily();

/// See also [RecipeNotifier].
class RecipeNotifierFamily extends Family<AsyncValue<List<dynamic>>> {
  /// See also [RecipeNotifier].
  const RecipeNotifierFamily();

  /// See also [RecipeNotifier].
  RecipeNotifierProvider call(
    String mealId,
  ) {
    return RecipeNotifierProvider(
      mealId,
    );
  }

  @override
  RecipeNotifierProvider getProviderOverride(
    covariant RecipeNotifierProvider provider,
  ) {
    return call(
      provider.mealId,
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
  String? get name => r'recipeNotifierProvider';
}

/// See also [RecipeNotifier].
class RecipeNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RecipeNotifier, List<dynamic>> {
  /// See also [RecipeNotifier].
  RecipeNotifierProvider(
    String mealId,
  ) : this._internal(
          () => RecipeNotifier()..mealId = mealId,
          from: recipeNotifierProvider,
          name: r'recipeNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recipeNotifierHash,
          dependencies: RecipeNotifierFamily._dependencies,
          allTransitiveDependencies:
              RecipeNotifierFamily._allTransitiveDependencies,
          mealId: mealId,
        );

  RecipeNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mealId,
  }) : super.internal();

  final String mealId;

  @override
  FutureOr<List<dynamic>> runNotifierBuild(
    covariant RecipeNotifier notifier,
  ) {
    return notifier.build(
      mealId,
    );
  }

  @override
  Override overrideWith(RecipeNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RecipeNotifierProvider._internal(
        () => create()..mealId = mealId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mealId: mealId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RecipeNotifier, List<dynamic>>
      createElement() {
    return _RecipeNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecipeNotifierProvider && other.mealId == mealId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mealId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RecipeNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<dynamic>> {
  /// The parameter `mealId` of this provider.
  String get mealId;
}

class _RecipeNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RecipeNotifier,
        List<dynamic>> with RecipeNotifierRef {
  _RecipeNotifierProviderElement(super.provider);

  @override
  String get mealId => (origin as RecipeNotifierProvider).mealId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
