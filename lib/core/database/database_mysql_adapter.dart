import 'package:base_backend/core/database/database.dart';
import 'package:mysql1/mysql1.dart';
// ignore: depend_on_referenced_packages
import 'package:commons_core/commons_core.dart';

class DatabaseMysqlAdapter implements Database {
  @override
  Future<MySqlConnection> get getConnection async => MySqlConnection.connect(
    ConnectionSettings(
      host: await CustomEnv.get<String>(key: 'DB_HOST'),
      port: await CustomEnv.get<int>(key: 'DB_PORT'),
      user: await CustomEnv.get<String>(key: 'DB_USER'),
      db: await CustomEnv.get<String>(key: 'DB_BASE'),
      password: await CustomEnv.get<String>(key: 'DB_PASSWORD'),
    ),
  );

  @override
  query(String sql, [List<dynamic>? params]) async {
    var conn = await getConnection;
    return conn.query(sql, params);
  }
}
