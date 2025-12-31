abstract class Database<T> {
  Future<T> get getConnection;

  // ignore: strict_top_level_inference
  query(String sql, [List? params]);
}
