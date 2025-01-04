import 'package:dartz/dartz.dart';
import 'package:kitabat_app/features/home/domain/repositories/home_repo.dart';

import '../../../../core/errors/exception.dart';
import '../entities/book_entity.dart';

class FetchLatestAddedUseCase {
  final HomeRepo homeRepo;

  FetchLatestAddedUseCase(this.homeRepo);

  Future<Either<ServerException, List<BookEntity>>> call(
      [int pageNum = 0]) async {
    return await homeRepo.fetchLatestAddedBooks(pageNum: pageNum);
  }
}
