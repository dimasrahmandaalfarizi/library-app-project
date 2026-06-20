// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(supplierRepository)
final supplierRepositoryProvider = SupplierRepositoryProvider._();

final class SupplierRepositoryProvider
    extends
        $FunctionalProvider<
          SupplierRepository,
          SupplierRepository,
          SupplierRepository
        >
    with $Provider<SupplierRepository> {
  SupplierRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'supplierRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$supplierRepositoryHash();

  @$internal
  @override
  $ProviderElement<SupplierRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SupplierRepository create(Ref ref) {
    return supplierRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SupplierRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SupplierRepository>(value),
    );
  }
}

String _$supplierRepositoryHash() =>
    r'b95b91e788d492e81f1a2a338cec1bdfa0106683';

@ProviderFor(suppliers)
final suppliersProvider = SuppliersProvider._();

final class SuppliersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<SupplierModel>>,
          List<SupplierModel>,
          FutureOr<List<SupplierModel>>
        >
    with
        $FutureModifier<List<SupplierModel>>,
        $FutureProvider<List<SupplierModel>> {
  SuppliersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'suppliersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$suppliersHash();

  @$internal
  @override
  $FutureProviderElement<List<SupplierModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<SupplierModel>> create(Ref ref) {
    return suppliers(ref);
  }
}

String _$suppliersHash() => r'66186bad11d5e02a2821536f05529d39158c2dad';
