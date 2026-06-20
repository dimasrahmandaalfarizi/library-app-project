import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_model.freezed.dart';
part 'supplier_model.g.dart';

@freezed
class SupplierModel with _$SupplierModel {
  const factory SupplierModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'nama_supplier') required String name,
    @JsonKey(name: 'alamat') String? address,
    @JsonKey(name: 'telepon') String? phone,
  }) = _SupplierModel;

  factory SupplierModel.fromJson(Map<String, dynamic> json) => _$SupplierModelFromJson(json);
}
