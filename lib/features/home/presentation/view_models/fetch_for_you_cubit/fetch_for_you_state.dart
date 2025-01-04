import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';

abstract class FetchForYouState {}

class FetchForYouInitial extends FetchForYouState {}

class FetchForYouLoading extends FetchForYouState {}

class FetchForYouPaginationLoading extends FetchForYouState {}

class FetchForYouPaginationFailure extends FetchForYouState {
  final String error;

  FetchForYouPaginationFailure(this.error);
}

class FetchForYouSuccess extends FetchForYouState {
  final List<BookEntity> books;

  FetchForYouSuccess(this.books);
}

class FetchForYouFailure extends FetchForYouState {
  final String error;

  FetchForYouFailure(this.error);
}
