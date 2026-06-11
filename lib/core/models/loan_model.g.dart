// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoanModel _$LoanModelFromJson(Map<String, dynamic> json) => _LoanModel(
  id: json['id'] as String,
  bookId: json['bookId'] as String,
  memberId: json['memberId'] as String,
  borrowDate: DateTime.parse(json['borrowDate'] as String),
  returnDate: json['returnDate'] == null
      ? null
      : DateTime.parse(json['returnDate'] as String),
  status: json['status'] as String,
  fineAmount: (json['fineAmount'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$LoanModelToJson(_LoanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookId': instance.bookId,
      'memberId': instance.memberId,
      'borrowDate': instance.borrowDate.toIso8601String(),
      'returnDate': instance.returnDate?.toIso8601String(),
      'status': instance.status,
      'fineAmount': instance.fineAmount,
    };
