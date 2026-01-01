import 'package:base_backend/domain/models/user_model.dart';
import 'package:base_backend/domain/ports/inputs/user_service.dart';
import 'package:base_backend/domain/ports/outputs/user_repository.dart';

class UserServiceImp implements UserService {
  final UserRepository _userRepository;
  UserServiceImp(this._userRepository);

  @override
  Future<List<User>> getAllUsers() async {
    return _userRepository.getUsers();
  }
}
