// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(publisherRepository)
final publisherRepositoryProvider = PublisherRepositoryProvider._();

final class PublisherRepositoryProvider
    extends
        $FunctionalProvider<
          PublisherRepository,
          PublisherRepository,
          PublisherRepository
        >
    with $Provider<PublisherRepository> {
  PublisherRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publisherRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publisherRepositoryHash();

  @$internal
  @override
  $ProviderElement<PublisherRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PublisherRepository create(Ref ref) {
    return publisherRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PublisherRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PublisherRepository>(value),
    );
  }
}

String _$publisherRepositoryHash() =>
    r'6cfe9b21ff276e8f6f5621438b5c71396f1f0ab3';

@ProviderFor(publishers)
final publishersProvider = PublishersProvider._();

final class PublishersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PublisherModel>>,
          List<PublisherModel>,
          FutureOr<List<PublisherModel>>
        >
    with
        $FutureModifier<List<PublisherModel>>,
        $FutureProvider<List<PublisherModel>> {
  PublishersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publishersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publishersHash();

  @$internal
  @override
  $FutureProviderElement<List<PublisherModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PublisherModel>> create(Ref ref) {
    return publishers(ref);
  }
}

String _$publishersHash() => r'86286ed0aa6d7a1b39d50c73199397a1572d05e6';
