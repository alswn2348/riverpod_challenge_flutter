class ShoppingItemModel {
  final String name;
  final int quantity;
  final bool isForMen;
  final bool hasJewel;
  ShoppingItemModel({
    required this.name,
    required this.quantity,
    required this.isForMen,
    required this.hasJewel,
  });

  ShoppingItemModel copyWith({
    String? name,
    int? quantity,
    bool? isForMen,
    bool? hasJewel,
  }) {
    return ShoppingItemModel(
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      isForMen: isForMen ?? this.isForMen,
      hasJewel: hasJewel ?? this.hasJewel,
    );
  }
}
