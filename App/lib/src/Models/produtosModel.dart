class ProdutosModel {
  final int id;
  final String nome;
  final String imagem;
  final String categoria;
  final double valor;
  final double desconto;
  final double avaliacoes;

  ProdutosModel( 
      {required this.id,
      required this.nome,
      required this.imagem,
      required this.categoria,
      required this.valor,
      required this.desconto,
      required this.avaliacoes});
}
