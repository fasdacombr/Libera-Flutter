class Pessoa {
  final String id;
  final String nome;
  final int categoriaFK; // Da tabela de Categoria
  final String dataCadastro;
  final String observacoes;

  Pessoa({
    required this.id,
    required this.nome,
    required this.categoriaFK,
    required this.dataCadastro,
    this.observacoes = '',
  });
}
