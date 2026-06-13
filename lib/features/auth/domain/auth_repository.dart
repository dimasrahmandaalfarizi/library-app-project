import 'package:dartz/dartz.dart';
import 'package:library_app/core/models/user_model.dart';

abstract class AuthRepository {
  Future<Either<String, UserModel>> login(String email, String password);
  Future<Either<String, UserModel>> register(String email, String password, String name, String libraryId);
  Future<void> logout();
  Future<UserModel?> getCurrentUser();
}
