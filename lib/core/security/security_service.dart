import 'package:shelf/shelf.dart';

abstract class SecurityService<Type> {
  Future<String> generateJWT(String userID);
  Future<Type?> validateJWT(String token);

  Middleware get verifyJwt;
  Middleware get authorization;
}
