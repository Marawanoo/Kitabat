class RetailPrice {
  final num? amount;

  RetailPrice({required this.amount});

  factory RetailPrice.fromJson(Map<String, dynamic> jsonData) {
    return RetailPrice(amount: jsonData['amount'] as num?);
  }
}
