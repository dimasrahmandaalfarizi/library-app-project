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
      
      final userData = await _client.from('users').select().eq('id', response.user!.id).single();
      return Right(UserModel.fromJson(userData));
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserModel>> register(String email, String password, String name) async {
    try {
      final response = await _client.auth.signUp(email: email, password: password);
      if (response.user == null) return const Left('Registration failed');
      
      final userModel = UserModel(
        id: response.user!.id,
        email: email,
        name: name,
        role: 'Member',
        createdAt: DateTime.now(),
      );
      
      await _client.from('users').insert(userModel.toJson());
      return Right(userModel);
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
      final userData = await _client.from('users').select().eq('id', user.id).single();
      return UserModel.fromJson(userData);
    } catch (_) {
      return null;
    }
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return SupabaseAuthRepository(ref.watch(supabaseClientProvider));
}
