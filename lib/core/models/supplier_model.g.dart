// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierModel _$SupplierModelFromJson(Map<String, dynamic> json) =>
    _SupplierModel(
      id: json['id'] as String,
      name: json['name'] as String,
      contact: json['contact'] as String?,
    );

Map<String, dynamic> _$SupplierModelToJson(_SupplierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'contact': instance.contact,
    };
