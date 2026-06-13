import 'package:library_app/core/models/user_model.dart';
import 'package:library_app/features/auth/data/supabase_auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<UserModel?> build() async {
    return ref.watch(authRepositoryProvider).getCurrentUser();
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    final result = await ref.read(authRepositoryProvider).login(email, password);
    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (user) => AsyncValue.data(user),
    );
  }

  Future<void> register(String email, String password, String name, String libraryId) async {
    state = const AsyncValue.loading();
    final result = await ref.read(authRepositoryProvider).register(email, password, name, libraryId);
    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (user) => AsyncValue.data(user),
    );
  }

  Future<void> logout() async {
    state = const AsyncValue.loading();
    await ref.read(authRepositoryProvider).logout();
    state = const AsyncValue.data(null);
  }
}
