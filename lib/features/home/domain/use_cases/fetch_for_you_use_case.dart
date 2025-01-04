import 'package:dartz/dartz.dart';
import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';
import 'package:kitabat_app/features/home/domain/repositories/home_repo.dart';

import '../../../../core/errors/exception.dart';

class FetchForYouUseCase {
  final HomeRepo homeRepo;

  FetchForYouUseCase(this.homeRepo);

  Future<Either<ServerException, List<BookEntity>>> call(
      [int pageNum = 0]) async {
    return await homeRepo.fetchForYouBooks(pageNum: pageNum);
  }
}
