// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookModel {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'isbn') String? get isbn;@JsonKey(name: 'judul') String get title;@JsonKey(name: 'penulis') String? get author;@JsonKey(name: 'deskripsi') String? get description;@JsonKey(name: 'jumlah_halaman') int? get pageCount;@JsonKey(name: 'tahun_terbit') int? get publishYear;@JsonKey(name: 'stok') int get stock;@JsonKey(name: 'cover_url') String? get coverUrl;@JsonKey(name: 'kategori_id') int? get categoryId;@JsonKey(name: 'penerbit_id') int? get publisherId;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookModelCopyWith<BookModel> get copyWith => _$BookModelCopyWithImpl<BookModel>(this as BookModel, _$identity);

  /// Serializes this BookModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.publishYear, publishYear) || other.publishYear == publishYear)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.publisherId, publisherId) || other.publisherId == publisherId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isbn,title,author,description,pageCount,publishYear,stock,coverUrl,categoryId,publisherId,createdAt);

@override
String toString() {
  return 'BookModel(id: $id, isbn: $isbn, title: $title, author: $author, description: $description, pageCount: $pageCount, publishYear: $publishYear, stock: $stock, coverUrl: $coverUrl, categoryId: $categoryId, publisherId: $publisherId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BookModelCopyWith<$Res>  {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) _then) = _$BookModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'isbn') String? isbn,@JsonKey(name: 'judul') String title,@JsonKey(name: 'penulis') String? author,@JsonKey(name: 'deskripsi') String? description,@JsonKey(name: 'jumlah_halaman') int? pageCount,@JsonKey(name: 'tahun_terbit') int? publishYear,@JsonKey(name: 'stok') int stock,@JsonKey(name: 'cover_url') String? coverUrl,@JsonKey(name: 'kategori_id') int? categoryId,@JsonKey(name: 'penerbit_id') int? publisherId,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$BookModelCopyWithImpl<$Res>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._self, this._then);

  final BookModel _self;
  final $Res Function(BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isbn = freezed,Object? title = null,Object? author = freezed,Object? description = freezed,Object? pageCount = freezed,Object? publishYear = freezed,Object? stock = null,Object? coverUrl = freezed,Object? categoryId = freezed,Object? publisherId = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isbn: freezed == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int?,publishYear: freezed == publishYear ? _self.publishYear : publishYear // ignore: cast_nullable_to_non_nullable
as int?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,publisherId: freezed == publisherId ? _self.publisherId : publisherId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookModel].
extension BookModelPatterns on BookModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookModel value)  $default,){
final _that = this;
switch (_that) {
case _BookModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookModel value)?  $default,){
final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'isbn')  String? isbn, @JsonKey(name: 'judul')  String title, @JsonKey(name: 'penulis')  String? author, @JsonKey(name: 'deskripsi')  String? description, @JsonKey(name: 'jumlah_halaman')  int? pageCount, @JsonKey(name: 'tahun_terbit')  int? publishYear, @JsonKey(name: 'stok')  int stock, @JsonKey(name: 'cover_url')  String? coverUrl, @JsonKey(name: 'kategori_id')  int? categoryId, @JsonKey(name: 'penerbit_id')  int? publisherId, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that.id,_that.isbn,_that.title,_that.author,_that.description,_that.pageCount,_that.publishYear,_that.stock,_that.coverUrl,_that.categoryId,_that.publisherId,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'isbn')  String? isbn, @JsonKey(name: 'judul')  String title, @JsonKey(name: 'penulis')  String? author, @JsonKey(name: 'deskripsi')  String? description, @JsonKey(name: 'jumlah_halaman')  int? pageCount, @JsonKey(name: 'tahun_terbit')  int? publishYear, @JsonKey(name: 'stok')  int stock, @JsonKey(name: 'cover_url')  String? coverUrl, @JsonKey(name: 'kategori_id')  int? categoryId, @JsonKey(name: 'penerbit_id')  int? publisherId, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BookModel():
return $default(_that.id,_that.isbn,_that.title,_that.author,_that.description,_that.pageCount,_that.publishYear,_that.stock,_that.coverUrl,_that.categoryId,_that.publisherId,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'isbn')  String? isbn, @JsonKey(name: 'judul')  String title, @JsonKey(name: 'penulis')  String? author, @JsonKey(name: 'deskripsi')  String? description, @JsonKey(name: 'jumlah_halaman')  int? pageCount, @JsonKey(name: 'tahun_terbit')  int? publishYear, @JsonKey(name: 'stok')  int stock, @JsonKey(name: 'cover_url')  String? coverUrl, @JsonKey(name: 'kategori_id')  int? categoryId, @JsonKey(name: 'penerbit_id')  int? publisherId, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that.id,_that.isbn,_that.title,_that.author,_that.description,_that.pageCount,_that.publishYear,_that.stock,_that.coverUrl,_that.categoryId,_that.publisherId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookModel implements BookModel {
  const _BookModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'isbn') this.isbn, @JsonKey(name: 'judul') required this.title, @JsonKey(name: 'penulis') this.author, @JsonKey(name: 'deskripsi') this.description, @JsonKey(name: 'jumlah_halaman') this.pageCount, @JsonKey(name: 'tahun_terbit') this.publishYear, @JsonKey(name: 'stok') this.stock = 0, @JsonKey(name: 'cover_url') this.coverUrl, @JsonKey(name: 'kategori_id') this.categoryId, @JsonKey(name: 'penerbit_id') this.publisherId, @JsonKey(name: 'created_at') this.createdAt});
  factory _BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'isbn') final  String? isbn;
@override@JsonKey(name: 'judul') final  String title;
@override@JsonKey(name: 'penulis') final  String? author;
@override@JsonKey(name: 'deskripsi') final  String? description;
@override@JsonKey(name: 'jumlah_halaman') final  int? pageCount;
@override@JsonKey(name: 'tahun_terbit') final  int? publishYear;
@override@JsonKey(name: 'stok') final  int stock;
@override@JsonKey(name: 'cover_url') final  String? coverUrl;
@override@JsonKey(name: 'kategori_id') final  int? categoryId;
@override@JsonKey(name: 'penerbit_id') final  int? publisherId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookModelCopyWith<_BookModel> get copyWith => __$BookModelCopyWithImpl<_BookModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.publishYear, publishYear) || other.publishYear == publishYear)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.publisherId, publisherId) || other.publisherId == publisherId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isbn,title,author,description,pageCount,publishYear,stock,coverUrl,categoryId,publisherId,createdAt);

@override
String toString() {
  return 'BookModel(id: $id, isbn: $isbn, title: $title, author: $author, description: $description, pageCount: $pageCount, publishYear: $publishYear, stock: $stock, coverUrl: $coverUrl, categoryId: $categoryId, publisherId: $publisherId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$BookModelCopyWith(_BookModel value, $Res Function(_BookModel) _then) = __$BookModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'isbn') String? isbn,@JsonKey(name: 'judul') String title,@JsonKey(name: 'penulis') String? author,@JsonKey(name: 'deskripsi') String? description,@JsonKey(name: 'jumlah_halaman') int? pageCount,@JsonKey(name: 'tahun_terbit') int? publishYear,@JsonKey(name: 'stok') int stock,@JsonKey(name: 'cover_url') String? coverUrl,@JsonKey(name: 'kategori_id') int? categoryId,@JsonKey(name: 'penerbit_id') int? publisherId,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$BookModelCopyWithImpl<$Res>
    implements _$BookModelCopyWith<$Res> {
  __$BookModelCopyWithImpl(this._self, this._then);

  final _BookModel _self;
  final $Res Function(_BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isbn = freezed,Object? title = null,Object? author = freezed,Object? description = freezed,Object? pageCount = freezed,Object? publishYear = freezed,Object? stock = null,Object? coverUrl = freezed,Object? categoryId = freezed,Object? publisherId = freezed,Object? createdAt = freezed,}) {
  return _then(_BookModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isbn: freezed == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int?,publishYear: freezed == publishYear ? _self.publishYear : publishYear // ignore: cast_nullable_to_non_nullable
as int?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,publisherId: freezed == publisherId ? _self.publisherId : publisherId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
