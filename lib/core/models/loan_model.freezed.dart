// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoanModel {

 String get id; String get bookId; String get memberId; DateTime get borrowDate; DateTime? get returnDate; String get status; double get fineAmount;
/// Create a copy of LoanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoanModelCopyWith<LoanModel> get copyWith => _$LoanModelCopyWithImpl<LoanModel>(this as LoanModel, _$identity);

  /// Serializes this LoanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.borrowDate, borrowDate) || other.borrowDate == borrowDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bookId,memberId,borrowDate,returnDate,status,fineAmount);

@override
String toString() {
  return 'LoanModel(id: $id, bookId: $bookId, memberId: $memberId, borrowDate: $borrowDate, returnDate: $returnDate, status: $status, fineAmount: $fineAmount)';
}


}

/// @nodoc
abstract mixin class $LoanModelCopyWith<$Res>  {
  factory $LoanModelCopyWith(LoanModel value, $Res Function(LoanModel) _then) = _$LoanModelCopyWithImpl;
@useResult
$Res call({
 String id, String bookId, String memberId, DateTime borrowDate, DateTime? returnDate, String status, double fineAmount
});




}
/// @nodoc
class _$LoanModelCopyWithImpl<$Res>
    implements $LoanModelCopyWith<$Res> {
  _$LoanModelCopyWithImpl(this._self, this._then);

  final LoanModel _self;
  final $Res Function(LoanModel) _then;

/// Create a copy of LoanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? bookId = null,Object? memberId = null,Object? borrowDate = null,Object? returnDate = freezed,Object? status = null,Object? fineAmount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,borrowDate: null == borrowDate ? _self.borrowDate : borrowDate // ignore: cast_nullable_to_non_nullable
as DateTime,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LoanModel].
extension LoanModelPatterns on LoanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoanModel value)  $default,){
final _that = this;
switch (_that) {
case _LoanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoanModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String bookId,  String memberId,  DateTime borrowDate,  DateTime? returnDate,  String status,  double fineAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoanModel() when $default != null:
return $default(_that.id,_that.bookId,_that.memberId,_that.borrowDate,_that.returnDate,_that.status,_that.fineAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String bookId,  String memberId,  DateTime borrowDate,  DateTime? returnDate,  String status,  double fineAmount)  $default,) {final _that = this;
switch (_that) {
case _LoanModel():
return $default(_that.id,_that.bookId,_that.memberId,_that.borrowDate,_that.returnDate,_that.status,_that.fineAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String bookId,  String memberId,  DateTime borrowDate,  DateTime? returnDate,  String status,  double fineAmount)?  $default,) {final _that = this;
switch (_that) {
case _LoanModel() when $default != null:
return $default(_that.id,_that.bookId,_that.memberId,_that.borrowDate,_that.returnDate,_that.status,_that.fineAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoanModel implements LoanModel {
  const _LoanModel({required this.id, required this.bookId, required this.memberId, required this.borrowDate, this.returnDate, required this.status, this.fineAmount = 0.0});
  factory _LoanModel.fromJson(Map<String, dynamic> json) => _$LoanModelFromJson(json);

@override final  String id;
@override final  String bookId;
@override final  String memberId;
@override final  DateTime borrowDate;
@override final  DateTime? returnDate;
@override final  String status;
@override@JsonKey() final  double fineAmount;

/// Create a copy of LoanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoanModelCopyWith<_LoanModel> get copyWith => __$LoanModelCopyWithImpl<_LoanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.borrowDate, borrowDate) || other.borrowDate == borrowDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bookId,memberId,borrowDate,returnDate,status,fineAmount);

@override
String toString() {
  return 'LoanModel(id: $id, bookId: $bookId, memberId: $memberId, borrowDate: $borrowDate, returnDate: $returnDate, status: $status, fineAmount: $fineAmount)';
}


}

/// @nodoc
abstract mixin class _$LoanModelCopyWith<$Res> implements $LoanModelCopyWith<$Res> {
  factory _$LoanModelCopyWith(_LoanModel value, $Res Function(_LoanModel) _then) = __$LoanModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String bookId, String memberId, DateTime borrowDate, DateTime? returnDate, String status, double fineAmount
});




}
/// @nodoc
class __$LoanModelCopyWithImpl<$Res>
    implements _$LoanModelCopyWith<$Res> {
  __$LoanModelCopyWithImpl(this._self, this._then);

  final _LoanModel _self;
  final $Res Function(_LoanModel) _then;

/// Create a copy of LoanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? bookId = null,Object? memberId = null,Object? borrowDate = null,Object? returnDate = freezed,Object? status = null,Object? fineAmount = null,}) {
  return _then(_LoanModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,borrowDate: null == borrowDate ? _self.borrowDate : borrowDate // ignore: cast_nullable_to_non_nullable
as DateTime,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
