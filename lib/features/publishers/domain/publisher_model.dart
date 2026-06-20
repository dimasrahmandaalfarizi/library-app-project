import 'package:freezed_annotation/freezed_annotation.dart';

part 'publisher_model.freezed.dart';
part 'publisher_model.g.dart';

@freezed
class PublisherModel with _$PublisherModel {
  const factory PublisherModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'nama_penerbit') required String name,
    @JsonKey(name: 'lokasi_penerbit') String? location,
  }) = _PublisherModel;

  factory PublisherModel.fromJson(Map<String, dynamic> json) => _$PublisherModelFromJson(json);
}
