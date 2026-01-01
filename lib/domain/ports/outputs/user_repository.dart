import 'dart:ffi';

import 'package:base_backend/domain/models/user_model.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
  Bool saveUser(User user);
  User getUserById(int id);
  User getUserByEmail(String email);
}
