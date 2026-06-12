import 'package:freezed_annotation/freezed_annotation.dart';

part 'publisher_model.freezed.dart';
part 'publisher_model.g.dart';

@freezed
abstract class PublisherModel with _$PublisherModel {
  const factory PublisherModel({
    required String id,
    required String name,
    String? address,
    String? contact,
  }) = _PublisherModel;

  factory PublisherModel.fromJson(Map<String, dynamic> json) => _$PublisherModelFromJson(json);
}
