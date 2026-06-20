// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierModel _$SupplierModelFromJson(Map<String, dynamic> json) =>
    _SupplierModel(
      id: (json['id'] as num).toInt(),
      name: json['nama_supplier'] as String,
      address: json['alamat'] as String?,
      phone: json['telepon'] as String?,
    );

Map<String, dynamic> _$SupplierModelToJson(_SupplierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_supplier': instance.name,
      'alamat': instance.address,
      'telepon': instance.phone,
    };
