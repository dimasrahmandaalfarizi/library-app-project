import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_model.freezed.dart';
part 'loan_model.g.dart';

@freezed
abstract class LoanModel with _$LoanModel {
  const factory LoanModel({
    required String id,
    required String bookId,
    required String memberId,
    required DateTime borrowDate,
    DateTime? returnDate,
    required String status,
    @Default(0.0) double fineAmount,
  }) = _LoanModel;

  factory LoanModel.fromJson(Map<String, dynamic> json) => _$LoanModelFromJson(json);
}
