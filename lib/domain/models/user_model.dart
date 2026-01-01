// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final int id;
  final String nome;
  final String sobrenome;
  final DateTime dtNascimento;
  final bool status;
  final String documento;
  final String email;
  final String cidade;

  User(
    this.id,
    this.nome,
    this.sobrenome,
    this.dtNascimento,
    this.status,
    this.documento,
    this.email,
    this.cidade,
  );

  @override
  String toString() {
    return 'User(id: $id, nome: $nome, sobrenome: $sobrenome, dtNascimento: $dtNascimento, status: $status, documento: $documento, email: $email, cidade: $cidade)';
  }
}
