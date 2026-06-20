import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:library_app/features/books/domain/book_model.dart';

part 'book_repository.g.dart';

class BookRepository {
  final SupabaseClient _supabase;

  BookRepository(this._supabase);

  Future<List<BookModel>> getBooks() async {
    final response = await _supabase.from('buku').select().order('judul');
    return response.map((json) => BookModel.fromJson(json)).toList();
  }

  Future<BookModel> getBookById(int id) async {
    final response = await _supabase.from('buku').select().eq('id', id).single();
    return BookModel.fromJson(response);
  }

  Future<BookModel> createBook(Map<String, dynamic> bookData) async {
    final response = await _supabase.from('buku').insert(bookData).select().single();
    return BookModel.fromJson(response);
  }

  Future<BookModel> updateBook(int id, Map<String, dynamic> bookData) async {
    final response = await _supabase.from('buku').update(bookData).eq('id', id).select().single();
    return BookModel.fromJson(response);
  }

  Future<void> deleteBook(int id) async {
    await _supabase.from('buku').delete().eq('id', id);
  }
}

@riverpod
BookRepository bookRepository(Ref ref) {
  return BookRepository(Supabase.instance.client);
}

@riverpod
Future<List<BookModel>> books(Ref ref) {
  return ref.watch(bookRepositoryProvider).getBooks();
}
