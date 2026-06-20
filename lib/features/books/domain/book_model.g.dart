// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookModel _$BookModelFromJson(Map<String, dynamic> json) => _BookModel(
  id: (json['id'] as num).toInt(),
  isbn: json['isbn'] as String?,
  title: json['judul'] as String,
  author: json['penulis'] as String?,
  description: json['deskripsi'] as String?,
  pageCount: (json['jumlah_halaman'] as num?)?.toInt(),
  publishYear: (json['tahun_terbit'] as num?)?.toInt(),
  stock: (json['stok'] as num?)?.toInt() ?? 0,
  coverUrl: json['cover_url'] as String?,
  categoryId: (json['kategori_id'] as num?)?.toInt(),
  publisherId: (json['penerbit_id'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$BookModelToJson(_BookModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isbn': instance.isbn,
      'judul': instance.title,
      'penulis': instance.author,
      'deskripsi': instance.description,
      'jumlah_halaman': instance.pageCount,
      'tahun_terbit': instance.publishYear,
      'stok': instance.stock,
      'cover_url': instance.coverUrl,
      'kategori_id': instance.categoryId,
      'penerbit_id': instance.publisherId,
      'created_at': instance.createdAt?.toIso8601String(),
    };
