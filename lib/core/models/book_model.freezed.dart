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

 String get id; String get title; String get author; String get isbn; String? get publisherId; String? get categoryId; String? get description; String? get coverUrl; int get availableCopies; int get totalCopies; DateTime? get createdAt;
/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookModelCopyWith<BookModel> get copyWith => _$BookModelCopyWithImpl<BookModel>(this as BookModel, _$identity);

  /// Serializes this BookModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.publisherId, publisherId) || other.publisherId == publisherId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.availableCopies, availableCopies) || other.availableCopies == availableCopies)&&(identical(other.totalCopies, totalCopies) || other.totalCopies == totalCopies)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,author,isbn,publisherId,categoryId,description,coverUrl,availableCopies,totalCopies,createdAt);

@override
String toString() {
  return 'BookModel(id: $id, title: $title, author: $author, isbn: $isbn, publisherId: $publisherId, categoryId: $categoryId, description: $description, coverUrl: $coverUrl, availableCopies: $availableCopies, totalCopies: $totalCopies, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BookModelCopyWith<$Res>  {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) _then) = _$BookModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String author, String isbn, String? publisherId, String? categoryId, String? description, String? coverUrl, int availableCopies, int totalCopies, DateTime? createdAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? author = null,Object? isbn = null,Object? publisherId = freezed,Object? categoryId = freezed,Object? description = freezed,Object? coverUrl = freezed,Object? availableCopies = null,Object? totalCopies = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,publisherId: freezed == publisherId ? _self.publisherId : publisherId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String author,  String isbn,  String? publisherId,  String? categoryId,  String? description,  String? coverUrl,  int availableCopies,  int totalCopies,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that.id,_that.title,_that.author,_that.isbn,_that.publisherId,_that.categoryId,_that.description,_that.coverUrl,_that.availableCopies,_that.totalCopies,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String author,  String isbn,  String? publisherId,  String? categoryId,  String? description,  String? coverUrl,  int availableCopies,  int totalCopies,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BookModel():
return $default(_that.id,_that.title,_that.author,_that.isbn,_that.publisherId,_that.categoryId,_that.description,_that.coverUrl,_that.availableCopies,_that.totalCopies,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String author,  String isbn,  String? publisherId,  String? categoryId,  String? description,  String? coverUrl,  int availableCopies,  int totalCopies,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that.id,_that.title,_that.author,_that.isbn,_that.publisherId,_that.categoryId,_that.description,_that.coverUrl,_that.availableCopies,_that.totalCopies,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookModel implements BookModel {
  const _BookModel({required this.id, required this.title, required this.author, required this.isbn, this.publisherId, this.categoryId, this.description, this.coverUrl, this.availableCopies = 0, this.totalCopies = 0, this.createdAt});
  factory _BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String author;
@override final  String isbn;
@override final  String? publisherId;
@override final  String? categoryId;
@override final  String? description;
@override final  String? coverUrl;
@override@JsonKey() final  int availableCopies;
@override@JsonKey() final  int totalCopies;
@override final  DateTime? createdAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.publisherId, publisherId) || other.publisherId == publisherId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.availableCopies, availableCopies) || other.availableCopies == availableCopies)&&(identical(other.totalCopies, totalCopies) || other.totalCopies == totalCopies)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,author,isbn,publisherId,categoryId,description,coverUrl,availableCopies,totalCopies,createdAt);

@override
String toString() {
  return 'BookModel(id: $id, title: $title, author: $author, isbn: $isbn, publisherId: $publisherId, categoryId: $categoryId, description: $description, coverUrl: $coverUrl, availableCopies: $availableCopies, totalCopies: $totalCopies, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$BookModelCopyWith(_BookModel value, $Res Function(_BookModel) _then) = __$BookModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String author, String isbn, String? publisherId, String? categoryId, String? description, String? coverUrl, int availableCopies, int totalCopies, DateTime? createdAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? author = null,Object? isbn = null,Object? publisherId = freezed,Object? categoryId = freezed,Object? description = freezed,Object? coverUrl = freezed,Object? availableCopies = null,Object? totalCopies = null,Object? createdAt = freezed,}) {
  return _then(_BookModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,publisherId: freezed == publisherId ? _self.publisherId : publisherId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
