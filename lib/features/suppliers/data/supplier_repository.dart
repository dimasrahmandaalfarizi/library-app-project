import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:library_app/features/suppliers/domain/supplier_model.dart';

part 'supplier_repository.g.dart';

class SupplierRepository {
  final SupabaseClient _supabase;

  SupplierRepository(this._supabase);

  Future<List<SupplierModel>> getSuppliers() async {
    final response = await _supabase.from('supplier').select().order('nama_supplier');
    return response.map((json) => SupplierModel.fromJson(json)).toList();
  }

  Future<SupplierModel> createSupplier(String name, String? address, String? phone) async {
    final response = await _supabase.from('supplier').insert({
      'nama_supplier': name,
      'alamat': address,
      'telepon': phone,
    }).select().single();
    return SupplierModel.fromJson(response);
  }

  Future<SupplierModel> updateSupplier(int id, String name, String? address, String? phone) async {
    final response = await _supabase.from('supplier').update({
      'nama_supplier': name,
      'alamat': address,
      'telepon': phone,
    }).eq('id', id).select().single();
    return SupplierModel.fromJson(response);
  }

  Future<void> deleteSupplier(int id) async {
    await _supabase.from('supplier').delete().eq('id', id);
  }
}

@riverpod
SupplierRepository supplierRepository(Ref ref) {
  return SupplierRepository(Supabase.instance.client);
}

@riverpod
Future<List<SupplierModel>> suppliers(Ref ref) {
  return ref.watch(supplierRepositoryProvider).getSuppliers();
}
