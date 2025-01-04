import 'package:kitabat_app/features/home/data/models/book_model/sale_info.dart';
import 'package:kitabat_app/features/home/data/models/book_model/volume_info.dart';
import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';

class BookModel extends BookEntity {
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;

  BookModel({this.volumeInfo, this.saleInfo})
      : super(
          image: volumeInfo?.imageLinks?.thumbnail ??
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw51g1gMBrZN3FbN17flaY_YSYmTMGuudh3Q&s',
          title: volumeInfo?.title ?? 'عنوان غير متوفر',
          author: volumeInfo?.authors?.join() ?? 'لا يوجد اسم',
          description: volumeInfo?.description ?? '',
          rating: volumeInfo?.rating ?? 0,
          price: saleInfo?.retailPrice?.amount ?? 0.0,
          category: volumeInfo?.category?.join() ?? '',
        );

  factory BookModel.fromJson(Map<String, dynamic> jsonData) {
    return BookModel(
        volumeInfo: jsonData['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJson(
                jsonData['volumeInfo'] as Map<String, dynamic>),
        saleInfo: jsonData['saleInfo'] == null
            ? null
            : SaleInfo.fromJson(jsonData['saleInfo'] as Map<String, dynamic>));
  }
}
