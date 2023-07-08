import 'package:products_app/features/auth/domain/domain.dart' show User;

abstract class AuthDataSource {
  Future<User> login(String email, String password);
  Future<User> loginWithGoogle();
  Future<User> register(String email, String password);
  Future<User> checkAuthStatus(String token);
  Future<bool> logout();
}
