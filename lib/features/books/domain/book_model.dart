import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'isbn') String? isbn,
    @JsonKey(name: 'judul') required String title,
    @JsonKey(name: 'penulis') String? author,
    @JsonKey(name: 'deskripsi') String? description,
    @JsonKey(name: 'jumlah_halaman') int? pageCount,
    @JsonKey(name: 'tahun_terbit') int? publishYear,
    @JsonKey(name: 'stok') @Default(0) int stock,
    @JsonKey(name: 'cover_url') String? coverUrl,
    @JsonKey(name: 'kategori_id') int? categoryId,
    @JsonKey(name: 'penerbit_id') int? publisherId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);
}
