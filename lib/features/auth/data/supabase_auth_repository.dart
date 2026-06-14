
import 'package:dartz/dartz.dart';
import 'package:library_app/core/models/user_model.dart';
import 'package:library_app/features/auth/domain/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:library_app/core/services/supabase_service.dart';

part 'supabase_auth_repository.g.dart';

class SupabaseAuthRepository implements AuthRepository {
  final SupabaseClient _client;

  SupabaseAuthRepository(this._client);

  @override
  Future<Either<String, UserModel>> login(String email, String password) async {
    try {
      final response = await _client.auth.signInWithPassword(email: email, password: password);
      if (response.user == null) return const Left('Login failed');
      
      final userData = await _client.from('profiles').select('*, roles(nama_role), anggota(npm)').eq('id', response.user!.id).single();
      return Right(_mapToUserModel(userData));
    } on AuthException catch (e) {
      return Left(e.message);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserModel>> register(String email, String password, String name, String libraryId) async {
    try {
      final response = await _client.auth.signUp(email: email, password: password);
      if (response.user == null) return const Left('Registration failed');
      
      // Insert into profiles (Assuming role_id 3 is Member)
      await _client.from('profiles').insert({
        'id': response.user!.id,
        'nama_lengkap': name,
        'email': email,
        'role_id': 3,
      });

      // Insert into anggota
      await _client.from('anggota').insert({
        'profile_id': response.user!.id,
        'npm': libraryId,
      });
      
      // Fetch the full data back
      final userData = await _client.from('profiles').select('*, roles(nama_role), anggota(npm)').eq('id', response.user!.id).single();
      return Right(_mapToUserModel(userData));
    } on AuthException catch (e) {
      return Left(e.message);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<void> logout() async {
    await _client.auth.signOut();
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    final user = _client.auth.currentUser;
    if (user == null) return null;
    try {
      final userData = await _client.from('profiles').select('*, roles(nama_role), anggota(npm)').eq('id', user.id).single();
      return _mapToUserModel(userData);
    } catch (_) {
      return null;
    }
  }

  UserModel _mapToUserModel(Map<String, dynamic> data) {
    String roleName = 'Member';
    if (data['roles'] != null && data['roles'] is Map) {
      roleName = data['roles']['nama_role'] ?? 'Member';
    }

    String? npm;
    if (data['anggota'] != null) {
      if (data['anggota'] is List && (data['anggota'] as List).isNotEmpty) {
        npm = data['anggota'][0]['npm'];
      } else if (data['anggota'] is Map) {
        npm = data['anggota']['npm'];
      }
    }

    return UserModel(
      id: data['id'],
      name: data['nama_lengkap'] ?? '',
      email: data['email'] ?? '',
      role: roleName,
      libraryId: npm,
      createdAt: data['created_at'] != null ? DateTime.parse(data['created_at']) : null,
    );
  }
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return SupabaseAuthRepository(ref.watch(supabaseClientProvider));
}
