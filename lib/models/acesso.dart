class Acesso {
  final String id;
  final String dataHora;
  final String tipo; // E = Entrada, S = Saída, N = Neutro/Negado
  final String idPessoaFK;

  Acesso({
    required this.id,
    required this.dataHora,
    required this.tipo,
    required this.idPessoaFK,
  });
}
