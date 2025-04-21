// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_meal_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchNotifierHash() => r'99ca0a90b1a5403802e94f2238b05dc40a682ca2';

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

abstract class _$SearchNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<dynamic>> {
  late final String searchString;

  FutureOr<List<dynamic>> build(
    String searchString,
  );
}

/// See also [SearchNotifier].
@ProviderFor(SearchNotifier)
const searchNotifierProvider = SearchNotifierFamily();

/// See also [SearchNotifier].
class SearchNotifierFamily extends Family<AsyncValue<List<dynamic>>> {
  /// See also [SearchNotifier].
  const SearchNotifierFamily();

  /// See also [SearchNotifier].
  SearchNotifierProvider call(
    String searchString,
  ) {
    return SearchNotifierProvider(
      searchString,
    );
  }

  @override
  SearchNotifierProvider getProviderOverride(
    covariant SearchNotifierProvider provider,
  ) {
    return call(
      provider.searchString,
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
  String? get name => r'searchNotifierProvider';
}

/// See also [SearchNotifier].
class SearchNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    SearchNotifier, List<dynamic>> {
  /// See also [SearchNotifier].
  SearchNotifierProvider(
    String searchString,
  ) : this._internal(
          () => SearchNotifier()..searchString = searchString,
          from: searchNotifierProvider,
          name: r'searchNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchNotifierHash,
          dependencies: SearchNotifierFamily._dependencies,
          allTransitiveDependencies:
              SearchNotifierFamily._allTransitiveDependencies,
          searchString: searchString,
        );

  SearchNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.searchString,
  }) : super.internal();

  final String searchString;

  @override
  FutureOr<List<dynamic>> runNotifierBuild(
    covariant SearchNotifier notifier,
  ) {
    return notifier.build(
      searchString,
    );
  }

  @override
  Override overrideWith(SearchNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchNotifierProvider._internal(
        () => create()..searchString = searchString,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        searchString: searchString,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SearchNotifier, List<dynamic>>
      createElement() {
    return _SearchNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchNotifierProvider &&
        other.searchString == searchString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchString.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<dynamic>> {
  /// The parameter `searchString` of this provider.
  String get searchString;
}

class _SearchNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SearchNotifier,
        List<dynamic>> with SearchNotifierRef {
  _SearchNotifierProviderElement(super.provider);

  @override
  String get searchString => (origin as SearchNotifierProvider).searchString;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
