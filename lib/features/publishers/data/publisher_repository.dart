import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:library_app/features/publishers/domain/publisher_model.dart';

part 'publisher_repository.g.dart';

class PublisherRepository {
  final SupabaseClient _supabase;

  PublisherRepository(this._supabase);

  Future<List<PublisherModel>> getPublishers() async {
    final response = await _supabase.from('penerbit').select().order('nama_penerbit');
    return response.map((json) => PublisherModel.fromJson(json)).toList();
  }

  Future<PublisherModel> createPublisher(String name, String? location) async {
    final response = await _supabase.from('penerbit').insert({
      'nama_penerbit': name,
      'lokasi_penerbit': location,
    }).select().single();
    return PublisherModel.fromJson(response);
  }

  Future<PublisherModel> updatePublisher(int id, String name, String? location) async {
    final response = await _supabase.from('penerbit').update({
      'nama_penerbit': name,
      'lokasi_penerbit': location,
    }).eq('id', id).select().single();
    return PublisherModel.fromJson(response);
  }

  Future<void> deletePublisher(int id) async {
    await _supabase.from('penerbit').delete().eq('id', id);
  }
}

@riverpod
PublisherRepository publisherRepository(Ref ref) {
  return PublisherRepository(Supabase.instance.client);
}

@riverpod
Future<List<PublisherModel>> publishers(Ref ref) {
  return ref.watch(publisherRepositoryProvider).getPublishers();
}
