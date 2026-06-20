// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PublisherModel _$PublisherModelFromJson(Map<String, dynamic> json) =>
    _PublisherModel(
      id: (json['id'] as num).toInt(),
      name: json['nama_penerbit'] as String,
      location: json['lokasi_penerbit'] as String?,
    );

Map<String, dynamic> _$PublisherModelToJson(_PublisherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_penerbit': instance.name,
      'lokasi_penerbit': instance.location,
    };
