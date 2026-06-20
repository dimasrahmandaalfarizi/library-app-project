import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:library_app/features/categories/domain/category_model.dart';

part 'category_repository.g.dart';

class CategoryRepository {
  final SupabaseClient _supabase;

  CategoryRepository(this._supabase);

  Future<List<CategoryModel>> getCategories() async {
    final response = await _supabase.from('kategori').select().order('nama_kategori');
    return response.map((json) => CategoryModel.fromJson(json)).toList();
  }

  Future<CategoryModel> getCategoryById(int id) async {
    final response = await _supabase.from('kategori').select().eq('id', id).single();
    return CategoryModel.fromJson(response);
  }

  Future<CategoryModel> createCategory(String name) async {
    final response = await _supabase.from('kategori').insert({'nama_kategori': name}).select().single();
    return CategoryModel.fromJson(response);
  }

  Future<CategoryModel> updateCategory(int id, String name) async {
    final response = await _supabase.from('kategori').update({'nama_kategori': name}).eq('id', id).select().single();
    return CategoryModel.fromJson(response);
  }

  Future<void> deleteCategory(int id) async {
    await _supabase.from('kategori').delete().eq('id', id);
  }
}

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  return CategoryRepository(Supabase.instance.client);
}

@riverpod
Future<List<CategoryModel>> categories(Ref ref) {
  return ref.watch(categoryRepositoryProvider).getCategories();
}
