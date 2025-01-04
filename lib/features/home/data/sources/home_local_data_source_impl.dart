import 'package:hive/hive.dart';
import 'package:kitabat_app/constants.dart';
import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';

import 'home_local_data_source.dart';

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> fetchBestSellersBooks({int pageNum = 0}) {
    int startIndex = pageNum * 10;
    int endIndex = (pageNum + 1) * 10;

    var box = Hive.box<BookEntity>(kBestSellersBox);
    int length = box.values.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchForYouBooks({int pageNum = 0}) {
    int startIndex = pageNum * 10;
    int endIndex = (pageNum + 1) * 10;

    var box = Hive.box<BookEntity>(kForYouBox);
    int length = box.values.length;

    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchLatestAddedBooks({int pageNum = 0}) {
    int startIndex = pageNum * 10;
    int endIndex = (pageNum + 1) * 10;

    var box = Hive.box<BookEntity>(kLatestAddedBox);

    int length = box.values.length;

    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }
}
