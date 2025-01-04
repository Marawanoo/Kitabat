import 'package:hive/hive.dart';
import 'package:kitabat_app/constants.dart';
import 'package:kitabat_app/core/api/api_consumer.dart';
import 'package:kitabat_app/core/api/api_key.dart';
import 'package:kitabat_app/features/home/data/models/book_model/book_model.dart';
import 'package:kitabat_app/features/home/data/sources/home_remote_data_source.dart';
import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiConsumer apiConsumer;

  HomeRemoteDataSourceImpl(this.apiConsumer);

  @override
  Future<List<BookEntity>> fetchForYouBooks({int pageNum = 0}) async {
    var data = await apiConsumer
        .get('volumes?key=$apiKey&q=مصر&startIndex=${pageNum * 10}');
    List<BookEntity> books = getBooksList(data);
    saveData(books, kForYouBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchBestSellersBooks({int pageNum = 0}) async {
    var data = await apiConsumer
        .get('volumes?key=$apiKey&q=الاقتصاد&startIndex=${pageNum * 10}');
    List<BookEntity> books = getBooksList(data);
    saveData(books, kBestSellersBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchLatestAddedBooks({int pageNum = 0}) async {
    var data = await apiConsumer
        .get('volumes?key=$apiKey&q=سياسة&startIndex=${pageNum * 10}');
    List<BookEntity> books = getBooksList(data);
    saveData(books, kLatestAddedBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  void saveData(List<BookEntity> books, String path) {
    var box = Hive.box<BookEntity>(path);
    box.addAll(books);
  }
}
