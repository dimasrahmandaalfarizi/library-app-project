import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_model.freezed.dart';
part 'supplier_model.g.dart';

@freezed
class SupplierModel with _$SupplierModel {
  const factory SupplierModel({
    required String id,
    required String name,
    String? contact,
  }) = _SupplierModel;

  factory SupplierModel.fromJson(Map<String, dynamic> json) => _$SupplierModelFromJson(json);
}
