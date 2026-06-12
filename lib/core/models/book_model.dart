import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
abstract class BookModel with _$BookModel {
  const factory BookModel({
    required String id,
    required String title,
    required String author,
    required String isbn,
    String? publisherId,
    String? categoryId,
    String? description,
    String? coverUrl,
    @Default(0) int availableCopies,
    @Default(0) int totalCopies,
    DateTime? createdAt,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);
}
