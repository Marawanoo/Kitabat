import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kitabat_app/core/errors/exception.dart';
import 'package:kitabat_app/core/errors/exception_model.dart';
import 'package:kitabat_app/features/home/data/sources/home_local_data_source.dart';
import 'package:kitabat_app/features/home/data/sources/home_remote_data_source.dart';
import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';
import 'package:kitabat_app/features/home/domain/repositories/home_repo.dart';

class HomeRepositoryImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepositoryImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<ServerException, List<BookEntity>>> fetchForYouBooks(
      {int pageNum = 0}) async {
    List<BookEntity> books;
    try {
      books = homeLocalDataSource.fetchForYouBooks(pageNum: pageNum);
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchForYouBooks(pageNum: pageNum);
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(exceptionSwitch(e));
      }

      return left(ServerException(
          exceptionModel: ExceptionModel(errorMass: e.toString(), status: 0)));
    }
  }

  @override
  Future<Either<ServerException, List<BookEntity>>> fetchBestSellersBooks(
      {int pageNum = 0}) async {
    List<BookEntity> books;
    try {
      books = homeLocalDataSource.fetchBestSellersBooks(pageNum: pageNum);
      if (books.isNotEmpty) {
        return right(books);
      }
      books =
          await homeRemoteDataSource.fetchBestSellersBooks(pageNum: pageNum);
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(exceptionSwitch(e));
      }

      return left(ServerException(
          exceptionModel: ExceptionModel(errorMass: e.toString(), status: 0)));
    }
  }

  @override
  Future<Either<ServerException, List<BookEntity>>> fetchLatestAddedBooks(
      {int pageNum = 0}) async {
    List<BookEntity> books;
    try {
      books = homeLocalDataSource.fetchLatestAddedBooks(pageNum: pageNum);
      if (books.isNotEmpty) {
        return right(books);
      }
      books =
          await homeRemoteDataSource.fetchLatestAddedBooks(pageNum: pageNum);
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(exceptionSwitch(e));
      }

      return left(ServerException(
          exceptionModel: ExceptionModel(errorMass: e.toString(), status: 0)));
    }
  }
}
