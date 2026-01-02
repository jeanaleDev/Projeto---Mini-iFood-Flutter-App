enum ProductCategory { pratos, bebida, sobremesa, doces, lanches }

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final String descricao;
  final ProductCategory category;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.descricao,
    required this.category,
  });
}

extension ProductModelExtension on ProductModel {
  String get formatedPrice =>
      "R\$ ${price.toStringAsFixed(2).replaceAll('.', ',')}";
}
