import '../services/auth_service.dart';
import '../models/user_model.dart';

class AuthViewModel {
  final AuthService _authService = AuthService();

  Future<UserModel?> signInWithGoogle() async {
    return await _authService.signInWithGoogle();
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }

  UserModel? get currentUser => _authService.getCurrentUser();
}
