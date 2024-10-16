import 'package:kitabat_app/features/home/data/models/book_model/sale_info.dart';
import 'package:kitabat_app/features/home/data/models/book_model/volume_info.dart';

class BookModel {
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;

  BookModel({required this.volumeInfo, required this.saleInfo});

  factory BookModel.fromJson(Map<String, dynamic> jsonData) {
    return BookModel(
        volumeInfo: jsonData['volumeInfo'], saleInfo: jsonData['saleInfo']);
  }
}
