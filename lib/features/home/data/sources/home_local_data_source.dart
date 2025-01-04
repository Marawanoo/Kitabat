import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchForYouBooks({int pageNum = 0});

  List<BookEntity> fetchBestSellersBooks({int pageNum = 0});

  List<BookEntity> fetchLatestAddedBooks({int pageNum = 0});
}
