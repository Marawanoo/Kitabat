import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchForYouBooks({int pageNum = 0});

  Future<List<BookEntity>> fetchBestSellersBooks({int pageNum = 0});

  Future<List<BookEntity>> fetchLatestAddedBooks({int pageNum = 0});
}
