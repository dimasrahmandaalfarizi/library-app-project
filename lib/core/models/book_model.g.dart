// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookModel _$BookModelFromJson(Map<String, dynamic> json) => _BookModel(
  id: json['id'] as String,
  title: json['title'] as String,
  author: json['author'] as String,
  isbn: json['isbn'] as String,
  publisherId: json['publisherId'] as String?,
  categoryId: json['categoryId'] as String?,
  description: json['description'] as String?,
  coverUrl: json['coverUrl'] as String?,
  availableCopies: (json['availableCopies'] as num?)?.toInt() ?? 0,
  totalCopies: (json['totalCopies'] as num?)?.toInt() ?? 0,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$BookModelToJson(_BookModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'isbn': instance.isbn,
      'publisherId': instance.publisherId,
      'categoryId': instance.categoryId,
      'description': instance.description,
      'coverUrl': instance.coverUrl,
      'availableCopies': instance.availableCopies,
      'totalCopies': instance.totalCopies,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
