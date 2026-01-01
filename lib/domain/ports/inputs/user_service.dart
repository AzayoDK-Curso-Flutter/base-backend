import 'package:base_backend/domain/models/user_model.dart';

abstract class UserService {
  Future<List<User>> getAllUsers();
}
