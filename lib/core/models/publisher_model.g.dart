// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PublisherModel _$PublisherModelFromJson(Map<String, dynamic> json) =>
    _PublisherModel(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      contact: json['contact'] as String?,
    );

Map<String, dynamic> _$PublisherModelToJson(_PublisherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'contact': instance.contact,
    };
