import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:mysql1/mysql1.dart';

void main() async {
  final conn = await MySqlConnection.connect(
    ConnectionSettings(
      host: '192.168.1.204',
      port: 3307,
      user: 'root',
      db: 'delivery',
      password: 'root',
    ),
  );

  print(await conn.query('select * from tb_usuarios'));

  serve((Request req) => Response(200, body: 'Ola mundo'), 'localhost', 8080);
}
