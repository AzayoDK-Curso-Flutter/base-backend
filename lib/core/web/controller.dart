import 'package:base_backend/core/security/security_service.dart';
import 'package:shelf/shelf.dart';
// ignore: depend_on_referenced_packages
import 'package:commons_core/commons_core.dart';

abstract class Controller {
  Handler getHendler({List<Middleware>? middleware, bool isSecurity = false});

  Handler createHandler({
    required Handler router,
    List<Middleware>? middlewares,
    bool isSecurity = false,
  }) {
    middlewares ??= [];

    if (isSecurity) {
      var securityService = DependencyInjector().get<SecurityService>();
      middlewares.addAll([
        securityService.authorization,
        securityService.verifyJwt,
      ]);
    }

    var pipe = Pipeline();
    for (var m in middlewares) {
      pipe = pipe.addMiddleware(m);
    }

    return pipe.addHandler(router);
  }
}
