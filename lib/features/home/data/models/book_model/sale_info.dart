import 'package:kitabat_app/features/home/data/models/book_model/retail_price.dart';

class SaleInfo {
  final RetailPrice? retailPrice;

  SaleInfo({required this.retailPrice});

  factory SaleInfo.fromJson(Map<String, dynamic> jsonData) {
    return SaleInfo(
        retailPrice: jsonData['retailPrice'] == null
            ? null
            : RetailPrice.fromJson(
                jsonData['retailPrice'] as Map<String, dynamic>));
  }
}
