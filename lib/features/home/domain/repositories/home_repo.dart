import 'package:dartz/dartz.dart';
import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';

import '../../../../core/errors/exception.dart';

abstract class HomeRepo {
  Future<Either<ServerException, List<BookEntity>>> fetchForYouBooks(
      {int pageNum = 0});

  Future<Either<ServerException, List<BookEntity>>> fetchBestSellersBooks(
      {int pageNum = 0});

  Future<Either<ServerException, List<BookEntity>>> fetchLatestAddedBooks(
      {int pageNum = 0});
}
